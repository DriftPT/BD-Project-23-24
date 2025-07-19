import os
from logging.config import dictConfig

import psycopg
from flask import Flask, jsonify, request
from psycopg.rows import namedtuple_row

# Configuração de logging
dictConfig({
    'version': 1,
    'formatters': {'default': {
        'format': '[%(asctime)s] %(levelname)s in %(module)s: %(message)s',
    }},
    'handlers': {'wsgi': {
        'class': 'logging.StreamHandler',
        'stream': 'ext://flask.logging.wsgi_errors_stream',
        'formatter': 'default'
    }},
    'root': {
        'level': 'INFO',
        'handlers': ['wsgi']
    }
})

# Definir URL do banco de dados
DATABASE_URL = os.environ.get("DATABASE_URL", "postgres://saude:saude@postgres/saude")

app = Flask(__name__)
app.config.from_prefixed_env()
log = app.logger


# Função para obter uma conexão com o banco de dados

@app.route('/', methods=("GET",))
def list_clinicas():
    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor(row_factory=namedtuple_row) as cur:
            cur.execute(
                """
                SELECT nome, morada
                FROM clinica;
                """
            )
            clinicas = cur.fetchall()
            log.debug(f"Found {cur.rowcount} rows.")
    response = {
        "Clinicas": [
            {'Nome': clinica.nome, 'Morada': clinica.morada} for clinica in clinicas
        ]
    }
    return jsonify(response)


@app.route('/c/<clinica>/', methods=("GET",))
def list_especialidades(clinica):
    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor(row_factory=namedtuple_row) as cur:
            cur.execute("""
                SELECT 1 
                FROM clinica
                WHERE nome = %s
            """, (clinica,)
            )
            is_clinic = cur.fetchone()
            if is_clinic is None:
                return jsonify({'Erro': 'A clinica não existe.'})
            
            cur.execute(
                """
                SELECT DISTINCT medico.especialidade
                FROM medico
                JOIN trabalha ON medico.nif = trabalha.nif
                WHERE trabalha.nome = %s
                """, 
                (clinica,) 
            )
            especialidades = cur.fetchall()
    
    return jsonify({'Especialidades': [especialidade.especialidade for especialidade in especialidades]})

def get_next_datetime(current_datetime):
    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                SELECT DATE_TRUNC('minute', %s::timestamp + INTERVAL '30 minutes')
                """, 
                (current_datetime,)
            )
            next_datetime = cur.fetchone()[0]
    return next_datetime

def get_available_slots(nif, clinic, start_datetime):
    available_slots = []
    current_datetime = start_datetime
    while len(available_slots) < 3:
        hour = current_datetime.hour
        minute = current_datetime.minute
        if (8 <= hour < 13 or 14 <= hour < 19) and (minute == 0 or minute == 30):
            with psycopg.connect(conninfo=DATABASE_URL) as conn:
                with conn.cursor() as cur:
                    cur.execute(
                        """
                        SELECT *
                        FROM consulta
                        WHERE nif = %s AND nome = %s AND data = %s AND hora = %s
                        """, 
                        (nif, clinic, current_datetime.date(), current_datetime.time()) 
                    )
                    
                    if cur.fetchone() is None:
                        available_slots.append(current_datetime)
        current_datetime = get_next_datetime(current_datetime)
    return available_slots


def get_current_datetime():
    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                SELECT 
                    CASE 
                        WHEN DATE_PART('minute', NOW()) > 30 THEN 
                            (DATE_TRUNC('hour', NOW()) + INTERVAL '1 hour') + INTERVAL '1 hour'
                        ELSE 
                            (DATE_TRUNC('hour', NOW()) +INTERVAL '1 hour') + INTERVAL '30 minutes' 
                    END
                """
            )
            current_datetime = cur.fetchone()[0]
    return current_datetime

@app.route('/c/<clinica>/<especialidade>/', methods=("GET",))
def list_medicos_horarios(clinica, especialidade):
    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor(row_factory=namedtuple_row) as cur:
            cur.execute("""
                SELECT 1 
                FROM clinica
                WHERE nome = %s
            """, (clinica,))
            is_clinic = cur.fetchone()
            if is_clinic is None:
                return jsonify({'Erro': 'A clinica não existe.'})
            
            cur.execute("""
                SELECT 1 
                FROM medico
                WHERE especialidade = %s
            """, (especialidade,))
            is_esp = cur.fetchone()
            if is_esp is None:
                return jsonify({'Erro': 'A especialidade não existe.'})
            
            cur.execute(
                """
                SELECT DISTINCT medico.nif, medico.nome
                FROM medico
                JOIN trabalha ON medico.nif = trabalha.nif
                WHERE trabalha.nome = %s AND medico.especialidade = %s
                """, 
                (clinica, especialidade)
            )
            medicos = cur.fetchall()
    current_datetime = get_current_datetime()
    result = []
    for medico in medicos:
        available_slots = get_available_slots(medico.nif, clinica, current_datetime)
        medico_info = {
            "Nome": medico.nome,
            "Primeiros horários disponíveis": [{"data": slot.date().isoformat(), "hora": slot.time().isoformat()} for slot in available_slots]
        }
        result.append(medico_info)
    response = {
        "Médicos": result
    }
    return jsonify(response)


def verificar_formato_hora(data, hora):
    if len(data) != 10 or data[4] != '-' or data[7] != '-':
        return False
    
    if len(hora) != 8 or hora[2] != ':' or hora[5] != ':':
        return False
 
    return True

@app.route('/a/<clinica>/registar/', methods=("POST",))
def registar_consulta(clinica):
    ssn = request.args.get('paciente')
    nif = request.args.get('médico')
    data_consulta = request.args.get('data')
    hora_consulta = request.args.get('hora')

    if not ssn or not nif or not data_consulta or not hora_consulta:
        return jsonify({'Erro': 'Todos os campos (paciente, médico, data, hora) são obrigatórios.'})
     
    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor() as cur:
            if not verificar_formato_hora(data_consulta, hora_consulta):
                return jsonify({'Erro': 'Formato de data ou hora inválido.', 'Formato esperado': {"data": "XXXX-XX-XX", "hora": "XX:XX:XX"}})
            data_string = f"{data_consulta} {hora_consulta}"
            try:
                cur.execute("""
                    SELECT NOW() + INTERVAL '1 hour' > %s::timestamp;
                """, (data_string,))
                result = cur.fetchone()
                if result[0]:
                    return jsonify({'Erro': 'A data e hora da consulta devem ser posteriores ao momento atual.'})
            except psycopg.errors.InvalidDatetimeFormat:
                return jsonify({'Erro': 'Formato de data ou hora inválido.', 'Formato esperado': {"data": "XXXX-XX-XX", "hora": "XX:XX:XX"}})
            except psycopg.errors.DatetimeFieldOverflow:
                return jsonify({'Erro': 'Campo de data ou hora fora do intervalo válido.'})

            cur.execute("""
                SELECT 1
                FROM paciente
                WHERE ssn = %s
            """, (ssn,))
            is_pacient = cur.fetchone()
            if is_pacient is None:
                return jsonify({'Erro': 'O ssn do paciente não está registado.'})
            
            cur.execute("""
                SELECT 1 
                FROM medico
                WHERE nif = %s
            """, (nif,))
            is_medic = cur.fetchone()
            if is_medic is None:
                return jsonify({'Erro': 'O nif do médico não está registado.'})
            
            cur.execute("""
                SELECT 1 
                FROM clinica
                WHERE nome = %s
            """, (clinica,))
            is_clinic = cur.fetchone()
            if is_clinic is None:
                return jsonify({'Erro': 'A clinica não existe.'})
            
            try:
                cur.execute("""
                    INSERT INTO consulta (ssn, nif, nome, data, hora, codigo_sns)
                    VALUES (%s, %s, %s, %s, %s, LPAD(((RANDOM() + 1) * 888888888888)::TEXT, 12, '0'))
                    RETURNING id
                """, (ssn, nif, clinica, data_consulta, hora_consulta))
                consulta = cur.fetchone()
                conn.commit()
            except psycopg.errors.UniqueViolation:
                return jsonify({'Erro': 'Já existe uma consulta agendada para essa data e hora.'})
            except psycopg.errors.RaiseException as error:
                return jsonify({'Erro': str(error).split("\nCONTEXT:")[0] + "."})
            except psycopg.errors.CheckViolation:
                return jsonify({'Erro': 'Horário incorreto, as consultas são à hora exata ou meia-hora no horário 8-13h e 14-19h.'})
        
    return jsonify({"Mensagem": "Consulta registrada com sucesso.", "consulta_id": consulta[0]})

@app.route('/a/<clinica>/cancelar/', methods=["POST"])
def cancelar_consulta(clinica):
    ssn = request.args.get('paciente')
    nif = request.args.get('médico')
    data_consulta = request.args.get('data')
    hora_consulta = request.args.get('hora')

    if not all([ssn, nif, data_consulta, hora_consulta]):
        return jsonify({'Erro': 'Todos os campos (paciente, médico, data, hora) são obrigatórios.'})

    with psycopg.connect(conninfo=DATABASE_URL) as conn:
        with conn.cursor() as cur:
            if not verificar_formato_hora(data_consulta, hora_consulta):
                return jsonify({'Erro': 'Formato de data ou hora inválido.', 'Formato esperado': {"data": "XXXX-XX-XX", "hora": "XX:XX:XX"}})
            
            data_string = f"{data_consulta} {hora_consulta}"
            try:
                cur.execute("""
                    SELECT NOW() + INTERVAL '1 hour' > %s::timestamp;
                """, (data_string,))
                result = cur.fetchone()
                if result[0]:
                    return jsonify({'Erro': 'Não podes cancelar consultas que já ocorreram ou que estão a decorrer.'})
            except psycopg.errors.InvalidDatetimeFormat:
                return jsonify({'Erro': 'Formato de data ou hora inválido.', 'Formato esperado': {"data": "XXXX-XX-XX", "hora": "XX:XX:XX"}})
            except psycopg.errors.DatetimeFieldOverflow:
                return jsonify({'Erro': 'Campo de data ou hora fora do intervalo válido.'})
            
            
            cur.execute("""
                SELECT 1 
                FROM paciente
                WHERE ssn = %s
            """, (ssn,))
            is_pacient = cur.fetchone()
            if is_pacient is None:
                return jsonify({'Erro': 'O ssn do paciente não está registado.'})

            cur.execute("""
                SELECT 1 
                FROM medico
                WHERE nif = %s
            """, (nif,))
            is_medic = cur.fetchone()
            if is_medic is None:
                return jsonify({'Erro': 'O nif do médico não está registado.'})

            cur.execute("""
                SELECT 1 
                FROM clinica
                WHERE nome = %s
            """, (clinica,))
            is_clinic = cur.fetchone()
            if is_clinic is None:
                return jsonify({'Erro': 'A clínica não existe.'})
            
            cur.execute("""
                SELECT 1 
                FROM consulta
                WHERE ssn = %s and  nif = %s and nome = %s and data = %s and hora = %s
            """, (ssn, nif, clinica, data_consulta, hora_consulta,))
            is_consulta = cur.fetchone()
            if is_consulta is None:
                return jsonify({'Erro': 'Consulta não encontrada.'})

            cur.execute("""
                DELETE FROM consulta
                WHERE ssn = %s AND nif = %s AND data = %s AND hora = %s
            """, (ssn, nif, data_consulta, hora_consulta,))
            conn.commit()

    return jsonify({"Mensagem": "Consulta cancelada com sucesso."})

if __name__ == '__main__':
    app.run(debug=True)
