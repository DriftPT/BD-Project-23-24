INSERT INTO clinica (nome, telefone, morada) VALUES 
('Clinica Lisboa Centro', '211234567', 'Rua A, 1000-001 Lisboa'),
('Clinica Cascais', '211234568', 'Rua B, 2750-002 Cascais'),
('Clinica Oeiras', '211234569', 'Rua C, 2780-003 Oeiras'),
('Clinica Sintra', '211234570', 'Rua D, 2710-004 Sintra'),
('Clinica Almada', '211234571', 'Rua E, 2800-005 Almada');

-- Inserir Enfermeiros
INSERT INTO enfermeiro (nif, nome, telefone, morada, nome_clinica) VALUES 
('100000001', 'Enfermeiro Lisboa Centro 1', '211234571', 'Rua F, 1000-006 Lisboa', 'Clinica Lisboa Centro'),
('100000002', 'Enfermeiro Lisboa Centro 2', '211234572', 'Rua G, 1000-007 Lisboa', 'Clinica Lisboa Centro'),
('100000003', 'Enfermeiro Lisboa Centro 3', '211234573', 'Rua H, 1000-008 Lisboa', 'Clinica Lisboa Centro'),
('100000004', 'Enfermeiro Lisboa Centro 4', '211234574', 'Rua I, 1000-009 Lisboa', 'Clinica Lisboa Centro'),
('100000005', 'Enfermeiro Lisboa Centro 5', '211234575', 'Rua J, 1000-010 Lisboa', 'Clinica Lisboa Centro'),
('100000006', 'Enfermeiro Lisboa Centro 6', '211234576', 'Rua E, 1000-005 Lisboa', 'Clinica Lisboa Centro'),
('100000007', 'Enfermeiro Cascais 1', '211234577', 'Rua K, 2750-011 Cascais', 'Clinica Cascais'),
('100000008', 'Enfermeiro Cascais 2', '211234578', 'Rua L, 2750-012 Cascais', 'Clinica Cascais'),
('100000009', 'Enfermeiro Cascais 3', '211234579', 'Rua M, 2750-013 Cascais', 'Clinica Cascais'),
('100000010', 'Enfermeiro Cascais 4', '211234580', 'Rua N, 2750-014 Cascais', 'Clinica Cascais'),
('100000011', 'Enfermeiro Cascais 5', '211234581', 'Rua O, 2750-015 Cascais', 'Clinica Cascais'),
('100000012', 'Enfermeiro Oeiras 1', '211234582', 'Rua P, 2780-016 Oeiras', 'Clinica Oeiras'),
('100000013', 'Enfermeiro Oeiras 2', '211234583', 'Rua Q, 2780-017 Oeiras', 'Clinica Oeiras'),
('100000014', 'Enfermeiro Oeiras 3', '211234584', 'Rua R, 2780-018 Oeiras', 'Clinica Oeiras'),
('100000015', 'Enfermeiro Oeiras 4', '211234585', 'Rua S, 2780-019 Oeiras', 'Clinica Oeiras'),
('100000016', 'Enfermeiro Oeiras 5', '211234586', 'Rua T, 2780-020 Oeiras', 'Clinica Oeiras'),
('100000017', 'Enfermeiro Sintra 1', '211234587', 'Rua U, 2710-021 Sintra', 'Clinica Sintra'),
('100000018', 'Enfermeiro Sintra 2', '211234588', 'Rua V, 2710-022 Sintra', 'Clinica Sintra'),
('100000019', 'Enfermeiro Sintra 3', '211234589', 'Rua W, 2710-023 Sintra', 'Clinica Sintra'),
('100000020', 'Enfermeiro Sintra 4', '211234590', 'Rua X, 2710-024 Sintra', 'Clinica Sintra'),
('100000021', 'Enfermeiro Sintra 5', '211234591', 'Rua Y, 2710-025 Sintra', 'Clinica Sintra'),
('100000022', 'Enfermeiro Almada 1', '211234592', 'Rua Z, 2800-026 Almada', 'Clinica Almada'),
('100000023', 'Enfermeiro Almada 2', '211234593', 'Rua AA, 2800-027 Almada', 'Clinica Almada'),
('100000024', 'Enfermeiro Almada 3', '211234594', 'Rua BB, 2800-028 Almada', 'Clinica Almada'),
('100000025', 'Enfermeiro Almada 4', '211234595', 'Rua CC, 2800-029 Almada', 'Clinica Almada'),
('100000026', 'Enfermeiro Almada 5', '211234596', 'Rua DD, 2800-030 Almada', 'Clinica Almada'),
('100000027', 'Enfermeiro Almada 6', '211234597', 'Rua EE, 2800-031 Almada', 'Clinica Almada');

-- Inserir Médicos de Clínica Geral
INSERT INTO medico (nif, nome, telefone, morada, especialidade) VALUES 
('200000001', 'Medico Clinica Geral 1', '219876570', 'Rua A, 1000-001 Lisboa', 'clinica geral'),
('200000002', 'Medico Clinica Geral 2', '219876571', 'Rua B, 1000-002 Lisboa', 'clinica geral'),
('200000003', 'Medico Clinica Geral 3', '219876572', 'Rua C, 2800-027 Almada', 'clinica geral'),
('200000004', 'Medico Clinica Geral 4', '219876573', 'Rua D, 1000-004 Lisboa', 'clinica geral'),
('200000005', 'Medico Clinica Geral 5', '219876574', 'Rua E, 1000-005 Lisboa', 'clinica geral'),
('200000006', 'Medico Clinica Geral 6', '219876575', 'Rua F, 2800-027 Almada', 'clinica geral'),
('200000007', 'Medico Clinica Geral 7', '219876576', 'Rua G, 1000-007 Lisboa', 'clinica geral'),
('200000008', 'Medico Clinica Geral 8', '219876577', 'Rua H, 1000-008 Lisboa', 'clinica geral'),
('200000009', 'Medico Clinica Geral 9', '219876578', 'Rua I, 2750-014 Cascais', 'clinica geral'),
('200000010', 'Medico Clinica Geral 10', '219876579', 'Rua J, 1000-010 Lisboa', 'clinica geral'),
('200000011', 'Medico Clinica Geral 11', '219876580', 'Rua K, 1000-011 Lisboa', 'clinica geral'),
('200000012', 'Medico Clinica Geral 12', '219876581', 'Rua L, 1000-012 Lisboa', 'clinica geral'),
('200000013', 'Medico Clinica Geral 13', '219876582', 'Rua M, 2780-018 Oeiras', 'clinica geral'),
('200000014', 'Medico Clinica Geral 14', '219876583', 'Rua N, 2780-019 Oeiras', 'clinica geral'),
('200000015', 'Medico Clinica Geral 15', '219876584', 'Rua O, 1000-015 Lisboa', 'clinica geral'),
('200000016', 'Medico Clinica Geral 16', '219876585', 'Rua P, 1000-016 Lisboa', 'clinica geral'),
('200000017', 'Medico Clinica Geral 17', '219876586', 'Rua Q, 2710-025 Sintra', 'clinica geral'),
('200000018', 'Medico Clinica Geral 18', '219876587', 'Rua R, 1000-018 Lisboa', 'clinica geral'),
('200000019', 'Medico Clinica Geral 19', '219876588', 'Rua S, 2710-022 Sintra', 'clinica geral'),
('200000020', 'Medico Clinica Geral 20', '219876589', 'Rua T, 1000-020 Lisboa', 'clinica geral');

-- Inserir Médicos de Outras Especialidades
INSERT INTO medico (nif, nome, telefone, morada, especialidade) VALUES 
('300000001', 'Medico Ortopedia 1', '218765571', 'Rua A, 1000-021 Lisboa', 'ortopedia'),
('300000002', 'Medico Ortopedia 2', '218765572', 'Rua B, 1000-022 Lisboa', 'ortopedia'),
('300000003', 'Medico Ortopedia 3', '218765573', 'Rua C, 1000-023 Lisboa', 'ortopedia'),
('300000004', 'Medico Ortopedia 4', '218765574', 'Rua D, 1000-024 Lisboa', 'ortopedia'),
('300000005', 'Medico Ortopedia 5', '218765575', 'Rua E, 2800-028 Almada', 'ortopedia'),
('300000006', 'Medico Ortopedia 6', '218765576', 'Rua F, 1000-026 Lisboa', 'ortopedia'),
('300000007', 'Medico Ortopedia 7', '218765577', 'Rua G, 2800-027 Almada', 'ortopedia'),
('300000008', 'Medico Ortopedia 8', '218765578', 'Rua H, 1000-028 Lisboa', 'ortopedia'),
('300000009', 'Medico Cardiologia 1', '218765579', 'Rua I, 1000-029 Lisboa', 'cardiologia'),
('300000010', 'Medico Cardiologia 2', '218765580', 'Rua J, 1000-030 Lisboa', 'cardiologia'),
('300000011', 'Medico Cardiologia 3', '218765581', 'Rua K, 2780-019 Oeiras', 'cardiologia'),
('300000012', 'Medico Cardiologia 4', '218765582', 'Rua L, 1000-032 Lisboa', 'cardiologia'),
('300000013', 'Medico Cardiologia 5', '218765583', 'Rua M, 2750-014 Cascais', 'cardiologia'),
('300000014', 'Medico Cardiologia 6', '218765584', 'Rua N, 1000-034 Lisboa', 'cardiologia'),
('300000015', 'Medico Cardiologia 7', '218765585', 'Rua O, 1000-035 Lisboa', 'cardiologia'),
('300000016', 'Medico Cardiologia 8', '218765586', 'Rua P, 2750-014 Cascais', 'cardiologia'),
('300000017', 'Medico Dermatologia 1', '218765587', 'Rua Q, 1000-037 Lisboa', 'dermatologia'),
('300000018', 'Medico Dermatologia 2', '218765588', 'Rua R, 1000-038 Lisboa', 'dermatologia'),
('300000019', 'Medico Dermatologia 3', '218765589', 'Rua S, 2780-016 Oeiras', 'dermatologia'),
('300000020', 'Medico Dermatologia 4', '218765590', 'Rua T, 1000-040 Lisboa', 'dermatologia'),
('300000021', 'Medico Dermatologia 5', '218765591', 'Rua U, 2710-022 Sintra', 'dermatologia'),
('300000022', 'Medico Dermatologia 6', '218765592', 'Rua V, 1000-042 Lisboa', 'dermatologia'),
('300000023', 'Medico Dermatologia 7', '218765593', 'Rua W, 1000-043 Lisboa', 'dermatologia'),
('300000024', 'Medico Dermatologia 8', '218765594', 'Rua X, 1000-044 Lisboa', 'dermatologia'),
('300000025', 'Medico Gastroenterologia 1', '218765595', 'Rua Y, 1000-045 Lisboa', 'gastroenterologia'),
('300000026', 'Medico Gastroenterologia 2', '218765596', 'Rua Z, 1000-046 Lisboa', 'gastroenterologia'),
('300000027', 'Medico Gastroenterologia 3', '218765597', 'Rua AA, 1000-047 Lisboa', 'gastroenterologia'),
('300000028', 'Medico Gastroenterologia 4', '218765598', 'Rua BB, 1000-048 Lisboa', 'gastroenterologia'),
('300000029', 'Medico Gastroenterologia 5', '218765599', 'Rua CC, 1000-049 Lisboa', 'gastroenterologia'),
('300000030', 'Medico Gastroenterologia 6', '218765600', 'Rua DD, 1000-050 Lisboa', 'gastroenterologia'),
('300000031', 'Medico Gastroenterologia 7', '218765601', 'Rua EE, 1000-051 Lisboa', 'gastroenterologia'),
('300000032', 'Medico Gastroenterologia 8', '218765602', 'Rua FF, 2800-031 Almada', 'gastroenterologia'),
('300000033', 'Medico Neurologia 1', '218765603', 'Rua GG, 1000-053 Lisboa', 'neurologia'),
('300000034', 'Medico Neurologia 2', '218765604', 'Rua HH, 1000-054 Lisboa', 'neurologia'),
('300000035', 'Medico Neurologia 3', '218765605', 'Rua II, 1000-055 Lisboa', 'neurologia'),
('300000036', 'Medico Neurologia 4', '218765606', 'Rua JJ, 1000-056 Lisboa', 'neurologia'),
('300000037', 'Medico Neurologia 5', '218765607', 'Rua KK, 1000-057 Lisboa', 'neurologia'),
('300000038', 'Medico Neurologia 6', '218765608', 'Rua LL, 2750-011 Cascais', 'neurologia'),
('300000039', 'Medico Neurologia 7', '218765609', 'Rua MM, 1000-059 Lisboa', 'neurologia'),
('300000040', 'Medico Neurologia 8', '218765610', 'Rua NN, 2750-013 Cascais', 'neurologia');



-- Relacionar Médicos com Clínicas
-- Cada médico trabalha em pelo menos duas clínicas
-- Em cada clínica, cada dia da semana deve haver pelo menos 8 médico

DO $$
DECLARE 
    med_nif CHAR(9);
    num_medicos INTEGER := 0;
BEGIN
    FOR med_nif IN (SELECT nif FROM medico) LOOP
        IF num_medicos < 10 THEN
            INSERT INTO trabalha (nif, nome, dia_da_semana) VALUES 
            (med_nif, 'Clinica Lisboa Centro', 0), (med_nif, 'Clinica Cascais', 2),
            (med_nif, 'Clinica Oeiras', 1), (med_nif, 'Clinica Sintra', 3), (med_nif, 'Clinica Sintra', 4),
            (med_nif, 'Clinica Almada', 5);
        ELSIF num_medicos < 20 THEN
            INSERT INTO trabalha (nif, nome, dia_da_semana) VALUES 
            (med_nif, 'Clinica Lisboa Centro', 1), (med_nif, 'Clinica Cascais', 6),
            (med_nif, 'Clinica Oeiras', 0), (med_nif, 'Clinica Oeiras', 2), (med_nif, 'Clinica Sintra', 5);
        ELSIF num_medicos < 30 THEN
            INSERT INTO trabalha (nif, nome, dia_da_semana) VALUES 
            (med_nif, 'Clinica Lisboa Centro', 4), (med_nif, 'Clinica Lisboa Centro', 3),
            (med_nif, 'Clinica Cascais', 5), (med_nif, 'Clinica Oeiras', 6), (med_nif, 'Clinica Sintra', 0),
            (med_nif, 'Clinica Almada', 2);
        ELSIF num_medicos <  40 THEN
            INSERT INTO trabalha (nif, nome, dia_da_semana) VALUES 
            (med_nif, 'Clinica Lisboa Centro', 5),  (med_nif, 'Clinica Lisboa Centro', 2),
            (med_nif, 'Clinica Cascais', 4), (med_nif, 'Clinica Oeiras', 3), (med_nif, 'Clinica Sintra', 1),
            (med_nif, 'Clinica Almada', 6);
        ELSIF num_medicos < 50 THEN
            INSERT INTO trabalha (nif, nome, dia_da_semana) VALUES 
            (med_nif, 'Clinica Lisboa Centro', 6), (med_nif, 'Clinica Cascais', 3),
            (med_nif, 'Clinica Oeiras', 4), (med_nif, 'Clinica Oeiras', 5), (med_nif, 'Clinica Almada', 1),
            (med_nif, 'Clinica Almada', 0);
        ELSE
            INSERT INTO trabalha (nif, nome, dia_da_semana) VALUES 
            (med_nif, 'Clinica Cascais', 0), (med_nif, 'Clinica Cascais', 1), 
            (med_nif, 'Clinica Sintra', 2), (med_nif, 'Clinica Sintra', 6), (med_nif, 'Clinica Almada', 3),
            (med_nif, 'Clinica Almada', 4);
        END IF;
        num_medicos := num_medicos + 1;
    END LOOP;
END $$;

-- Inserir Pacientes
DO $$
DECLARE 
    pac_nome VARCHAR(80);
    pac_telefone VARCHAR(15);
    pac_morada VARCHAR(255);
    pac_nif CHAR(9);
    pac_ssn CHAR(11);
    data_nasc DATE;
BEGIN
    FOR i IN 1..5000 LOOP
        pac_nome := 'Paciente ' || i;
        pac_telefone := LPAD((i + 961420981)::TEXT, 9, '0');
        IF i < 10 THEN
            pac_morada := 'Rua ' || i || ', 1600-00' || i || ' Odivelas';
        ELSIF i < 100 THEN
            pac_morada := 'Rua ' || i || ', 1600--0' || i || ' Odivelas';
        ELSIF i < 1000 THEN
            pac_morada := 'Rua ' || i || ', 1000-' || i || ' Lisboa';
        ELSIF i < 2000 THEN
            pac_morada := 'Rua ' || i || ', ' || i || '-123 Oeiras';
        ELSIF i < 3000 THEN
            pac_morada := 'Rua ' || i || ', ' || i || '-523 Almada';
        ELSIF i < 4000 THEN
            pac_morada := 'Rua ' || i || ', ' || i || '-102 Carcavelos';
        ELSE
            pac_morada := 'Rua ' || i || ', ' || i || '-218 Mafra';
        END IF;
        pac_nif := LPAD((i + 400000000)::TEXT, 9, '0');
        pac_ssn := LPAD((i + 21742000000)::TEXT, 11, '0');
        data_nasc := DATE '1970-01-01' + (RANDOM() * (365*50))::INT;
        INSERT INTO paciente (ssn, nif, nome, telefone, morada, data_nasc)
        VALUES (pac_ssn, pac_nif, pac_nome, pac_telefone, pac_morada, data_nasc);
    END LOOP;
END $$;


DO $$
DECLARE
    clinica_nome VARCHAR(80);
    consulta_data DATE;
    paciente_ssn CHAR(11);
    paciente_nif CHAR(9);
    medico_nif CHAR(9);
    medico_nif_result CHAR(9);
    total_consultas_por_clinica INTEGER;
    dias_aleatorios DATE[];
    horarios TIME[] := ARRAY['08:00', '08:30', '09:00', '09:30', '10:00', '10:30', '11:00', '11:30', '12:00', '12:30',
                      '14:00', '14:30', '15:00', '15:30', '16:00', '16:30', '17:00', '17:30', '18:00', '18:30'];
    pacientes_escolhidos CHAR(11)[] := ARRAY[]::CHAR(11)[];
    medicos_escolhidos CHAR(9)[] := ARRAY[]::CHAR(9)[];
    consulta_hora1 TIME;
    consulta_hora2 TIME;
    index1 INT;
    index2 INT;
    i INT := 0;
BEGIN
    dias_aleatorios := ARRAY(SELECT DISTINCT DATE '2023-01-01' + (RANDOM() * 730)::INT FROM generate_series(1, 80));
    
    FOR clinica_nome IN (SELECT nome FROM clinica) LOOP
        i := i + 1;
        FOREACH consulta_data IN ARRAY dias_aleatorios LOOP
            medicos_escolhidos := ARRAY[]::CHAR(9)[];
            total_consultas_por_clinica := 0;
            WHILE total_consultas_por_clinica < 21 LOOP
                SELECT ssn INTO paciente_ssn 
                FROM paciente 
                WHERE paciente.ssn NOT IN (SELECT unnest(pacientes_escolhidos))
                ORDER BY RANDOM() LIMIT 1;

                IF paciente_ssn IS NULL THEN
                    pacientes_escolhidos := ARRAY[]::CHAR(11)[];
                    SELECT ssn INTO paciente_ssn 
                    FROM paciente 
                    ORDER BY RANDOM() LIMIT 1;
                ELSE
                    pacientes_escolhidos := array_cat(pacientes_escolhidos, ARRAY[paciente_ssn]);
                END IF;

                SELECT nif INTO paciente_nif FROM paciente WHERE paciente.ssn = paciente_ssn;

                SELECT nif INTO medico_nif_result
                FROM trabalha
                WHERE trabalha.nome = clinica_nome AND trabalha.dia_da_semana = EXTRACT(DOW FROM consulta_data) 
                        AND trabalha.nif != paciente_nif AND trabalha.nif NOT IN (SELECT unnest(medicos_escolhidos)) 
                ORDER BY RANDOM() LIMIT 1;
                
                IF medico_nif_result IS NULL THEN
                    SELECT nif INTO medico_nif 
                    FROM trabalha 
                    WHERE trabalha.nome = clinica_nome AND trabalha.dia_da_semana = EXTRACT(DOW FROM consulta_data) AND trabalha.nif != paciente_nif
                    ORDER BY RANDOM() LIMIT 1;
                    index1 := 0;
                    LOOP
                        index1 := index1 + 1;
                        consulta_hora1 := horarios[index1];
                        PERFORM 1
                        FROM consulta
                        WHERE (consulta.nif = medico_nif OR consulta.ssn = paciente_ssn)
                          AND consulta.data = consulta_data
                          AND consulta.hora = consulta_hora1;
                        EXIT WHEN NOT FOUND;
                    END LOOP;
                    index2 := index1 - 1;
                    LOOP
                        index2 := index2 + 1;
                        consulta_hora2 := horarios[index2];
                        PERFORM 1
                        FROM consulta
                        WHERE (consulta.nif = medico_nif OR consulta.ssn = paciente_ssn)
                          AND consulta.data = consulta_data
                          AND consulta.hora = consulta_hora2;
                        EXIT WHEN NOT FOUND AND index2 != index1;
                    END LOOP;

                ELSE
                    medico_nif := medico_nif_result;
                    medicos_escolhidos := array_cat(medicos_escolhidos, ARRAY[medico_nif]);
                    LOOP
                        index1 := ceil(random() * array_length(horarios, 1));
                        consulta_hora1 := horarios[index1];
                        PERFORM 1
                        FROM consulta
                        WHERE consulta.ssn = paciente_ssn
                          AND consulta.data = consulta_data
                          AND consulta.hora = consulta_hora1;
                        EXIT WHEN NOT FOUND;
                    END LOOP;
                    LOOP
                        index2 := ceil(random() * array_length(horarios, 1));
                        consulta_hora2 := horarios[index2];
                        PERFORM 1
                        FROM consulta
                        WHERE consulta.ssn = paciente_ssn
                          AND consulta.data = consulta_data
                          AND consulta.hora = consulta_hora2;
                        EXIT WHEN NOT FOUND AND index2 != index1;
                    END LOOP;
                END IF;

                INSERT INTO consulta (ssn, nif, nome, data, hora, codigo_sns) VALUES
                (paciente_ssn, medico_nif, clinica_nome, consulta_data, consulta_hora1, LPAD((i + (RANDOM() + 1) * 9999999999999)::TEXT, 12, '0')),
                (paciente_ssn, medico_nif ,clinica_nome, consulta_data, consulta_hora2, LPAD((i + (RANDOM() + 1) * 1111111111111)::TEXT, 12, '0'));
                
                total_consultas_por_clinica := total_consultas_por_clinica + 1;
            END LOOP;
        END LOOP;
    END LOOP;
END $$;


-- Inserir receita
DO $$
DECLARE
    medicamentos VARCHAR(155)[] := ARRAY['aspirina', 'strepsils', 'toloxim', 'paracetamol', 'ibuprofeno','amoxilina'];
    consulta_sns VARCHAR(12);
    num_medicamentos INTEGER;
    quantidades SMALLINT;
    index1 INT;
    shuffled_index INT[];
    consulta_data DATE;
    consulta_hora TIME;
    consulta_count INTEGER;
    num_receitas INTEGER;
    count INTEGER := 1;
    
BEGIN
    SELECT COUNT(*) INTO consulta_count FROM consulta WHERE data < CURRENT_DATE OR (data = CURRENT_DATE AND hora <= CURRENT_TIME) ;
    num_receitas := floor(consulta_count * 0.8);

    FOR consulta_sns, consulta_data, consulta_hora IN (SELECT codigo_sns, data, hora FROM consulta) LOOP
        IF consulta_data < CURRENT_DATE OR (consulta_data = CURRENT_DATE AND consulta_hora <= CURRENT_TIME) THEN
            IF num_receitas >= count THEN
                num_medicamentos := floor(random() * 6) + 1;
                shuffled_index := ARRAY(SELECT generate_series(1, 6) ORDER BY random());
                FOR i IN 1..num_medicamentos LOOP
                    -- Select a random medication
                    quantidades := floor(random() * 3) + 1;
                    index1 := shuffled_index[i];
    
                    INSERT INTO receita (codigo_sns, medicamento, quantidade) VALUES 
                    (consulta_sns, medicamentos[index1], quantidades);
    
                END LOOP;
                count := count + 1;
             END IF;
        END IF;
    END LOOP;
END $$;

-- Inserir observação
DO $$
DECLARE
    sintomas_parametros VARCHAR(155)[];
    metricas_parametros VARCHAR(155)[];
    consulta_id INTEGER;
    numero_sintomas INTEGER;
    numero_metricas INTEGER;
    sintoma_param VARCHAR(155);
    metrica_param VARCHAR(155);
    unique_param BOOLEAN;
    consulta_data DATE;
    consulta_hora TIME;
BEGIN
    sintomas_parametros := ARRAY[
        'Sintoma1', 'Sintoma2', 'Sintoma3', 'Sintoma4', 'Sintoma5', 'Sintoma6', 'Sintoma7', 'Sintoma8', 'Sintoma9', 'Sintoma10',
        'Sintoma11', 'Sintoma12', 'Sintoma13', 'Sintoma14', 'Sintoma15', 'Sintoma16', 'Sintoma17', 'Sintoma18', 'Sintoma19', 'Sintoma20',
        'Sintoma21', 'Sintoma22', 'Sintoma23', 'Sintoma24', 'Sintoma25', 'Sintoma26', 'Sintoma27', 'Sintoma28', 'Sintoma29', 'Sintoma30',
        'Sintoma31', 'Sintoma32', 'Sintoma33', 'Sintoma34', 'Sintoma35', 'Sintoma36', 'Sintoma37', 'Sintoma38', 'Sintoma39', 'Sintoma40',
        'Sintoma41', 'Sintoma42', 'Sintoma43', 'Sintoma44', 'Sintoma45', 'Sintoma46', 'Sintoma47', 'Sintoma48', 'Sintoma49', 'Sintoma50'
    ];

    metricas_parametros := ARRAY[
        'Metrica1', 'Metrica2', 'Metrica3', 'Metrica4', 'Metrica5', 'Metrica6', 'Metrica7', 'Metrica8', 'Metrica9', 'Metrica10',
        'Metrica11', 'Metrica12', 'Metrica13', 'Metrica14', 'Metrica15', 'Metrica16', 'Metrica17', 'Metrica18', 'Metrica19', 'pressão diastólica'
    ];

    FOR consulta_id, consulta_data, consulta_hora IN (SELECT id, data, hora FROM consulta) LOOP
        IF consulta_data < CURRENT_DATE OR (consulta_data = CURRENT_DATE AND consulta_hora <= CURRENT_TIME) THEN
            -- Gerar de 1 a 5 observações de sintomas
            numero_sintomas := floor(random() * 5) + 1;
            FOR i IN 1..numero_sintomas LOOP
                unique_param := FALSE;
                WHILE NOT unique_param LOOP
                    sintoma_param := sintomas_parametros[floor(random() * array_length(sintomas_parametros, 1)) + 1];
                    -- Verifica se a combinação (id, parametro) já existe
                    IF NOT EXISTS (SELECT 1 FROM observacao WHERE id = consulta_id AND parametro = sintoma_param) THEN
                        INSERT INTO observacao (id, parametro) VALUES (consulta_id, sintoma_param);
                        unique_param := TRUE;
                    END IF;
                END LOOP;
            END LOOP;
    
            -- Gerar de 0 a 3 observações métricas
            numero_metricas := floor(random() * 3);
            FOR i IN 0..numero_metricas LOOP
                unique_param := FALSE;
                WHILE NOT unique_param LOOP
                    metrica_param := metricas_parametros[floor(random() * array_length(metricas_parametros, 1)) + 1];
                    -- Verifica se a combinação (id, parametro) já existe
                    IF NOT EXISTS (SELECT 1 FROM observacao WHERE id = consulta_id AND parametro = metrica_param) THEN
                        INSERT INTO observacao (id, parametro, valor) VALUES (consulta_id, metrica_param, random() * 100);
                        unique_param := TRUE;
                    END IF;
                END LOOP;
            END LOOP;
        END IF;
    END LOOP;
END $$;

