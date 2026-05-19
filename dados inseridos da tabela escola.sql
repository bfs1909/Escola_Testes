INSERT INTO aluno (nome, data_nascimento, cpf, email, telefone)
VALUES
('Ana Souza', '2005-03-12', '11111111111', 'ana@gmail.com', '11999990001'),
('Carlos Lima', '2004-07-21', '22222222222', 'carlos@gmail.com', '11999990002'),
('Mariana Alves', '2006-01-15', '33333333333', 'mariana@gmail.com', '11999990003'),
('João Pedro', '2005-09-30', '44444444444', 'joao@gmail.com', '11999990004'),
('Fernanda Costa', '2004-11-02', '55555555555', 'fernanda@gmail.com', '11999990005'),
('Lucas Martins', '2005-06-18', '66666666666', 'lucas@gmail.com', '11999990006'),
('Beatriz Rocha', '2006-02-28', '77777777777', 'bia@gmail.com', '11999990007'),
('Rafael Gomes', '2005-04-10', '88888888888', 'rafael@gmail.com', '11999990008'),
('Juliana Silva', '2004-12-25', '99999999999', 'juliana@gmail.com', '11999990009'),
('Pedro Henrique', '2005-08-14', '10101010101', 'pedro@gmail.com', '11999990010');

INSERT INTO professor (nome, especialidade, email, telefone)
VALUES
('Marcos Oliveira', 'Matemática', 'marcos@gmail.com', '11988880001'),
('Patricia Santos', 'Português', 'patricia@gmail.com', '11988880002'),
('Ricardo Mendes', 'História', 'ricardo@gmail.com', '11988880003'),
('Camila Ferreira', 'Biologia', 'camila@gmail.com', '11988880004'),
('André Lopes', 'Geografia', 'andre@gmail.com', '11988880005'),
('Sandra Melo', 'Física', 'sandra@gmail.com', '11988880006'),
('Eduardo Ramos', 'Química', 'eduardo@gmail.com', '11988880007'),
('Luciana Castro', 'Inglês', 'luciana@gmail.com', '11988880008'),
('Roberto Dias', 'Educação Física', 'roberto@gmail.com', '11988880009'),
('Vanessa Lima', 'Artes', 'vanessa@gmail.com', '11988880010');

INSERT INTO materia (nome_materia, carga_horaria)
VALUES
('Matemática', 80),
('Português', 80),
('História', 60),
('Biologia', 60),
('Geografia', 60),
('Física', 70),
('Química', 70),
('Inglês', 50),
('Educação Física', 40),
('Artes', 40);

INSERT INTO turma (nome_tuma, ano_letivo, id_professor)
VALUES
('1A', 2026, 1),
('1B', 2026, 2),
('2A', 2026, 3),
('2B', 2026, 4),
('3A', 2026, 5),
('3B', 2026, 6),
('1C', 2026, 7),
('2C', 2026, 8),
('3C', 2026, 9),
('4A', 2026, 10);

INSERT INTO matricula (data_matricula, id_aluno, id_turma)
VALUES
('2026-01-10', 1, 1),
('2026-01-10', 2, 1),
('2026-01-11', 3, 2),
('2026-01-11', 4, 2),
('2026-01-12', 5, 3),
('2026-01-12', 6, 4),
('2026-01-13', 7, 5),
('2026-01-13', 8, 6),
('2026-01-14', 9, 7),
('2026-01-14', 10, 8);

INSERT INTO professor_materia (id_professor, id_materia)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

INSERT INTO escola.base_salarial (salario_minimo, salario_maximo) 
VALUES
(2000, 2500),
(2501, 3000),
(3001, 3500),
(3501, 4000),
(4001, 4500),
(4501, 5000),
(5001, 5500),
(5501, 6000);

UPDATE escola.professor
SET CPF = '12345678901', salario_professor = 3500
WHERE id_professor = 1;

UPDATE escola.professor
SET CPF = '23456789012', salario_professor = 4200
WHERE id_professor = 2;

UPDATE escola.professor
SET CPF = '34567890123', salario_professor = 3900
WHERE id_professor = 3;

UPDATE escola.professor
SET CPF = '45678901234', salario_professor = 5100
WHERE id_professor = 4;

UPDATE escola.professor
SET CPF = '56789012345', salario_professor = 4800
WHERE id_professor = 5;

UPDATE escola.professor
SET CPF = '67890123456', salario_professor = 5300
WHERE id_professor = 6;

UPDATE escola.professor
SET CPF = '78901234567', salario_professor = 4600
WHERE id_professor = 7;

UPDATE escola.professor
SET CPF = '89012345678', salario_professor = 4000
WHERE id_professor = 8;

UPDATE escola.professor
SET CPF = '90123456789', salario_professor = 3700
WHERE id_professor = 9;

UPDATE escola.professor
SET CPF = '01234567890', salario_professor = 5500
WHERE id_professor = 10;



DESCRIBE escola.professor;

SELECT * FROM escola.base_salarial;

SELECT data_nascimento
FROM aluno;

/* modo de exibir a data de uma forma melhor */
SELECT DATE_FORMAT(data_nascimento, '%d/%m/%Y')
FROM aluno;

