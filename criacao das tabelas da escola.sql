/* tabela de criacao das tabelas da escola */

CREATE TABLE escola.Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    CPF CHAR(11),
    email VARCHAR(100),
    telefone CHAR(11)

);

CREATE TABLE escola.Professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    CPF CHAR(11),
    email VARCHAR(100),
    telefone CHAR(11)

);

CREATE TABLE escola.Materia (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nome_materia VARCHAR(100),
    carga_horaria INT CHECK (carga_horaria BETWEEN 0 AND 800)

);


/*primeiro jeito, nao recomendado */

CREATE TABLE escola.Turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(100),
    ano_letivo YEAR,
    id_professor INT REFERENCES Professor (id_professor)

);

/* 
    segundo jeito, desse jeito deu certo!!! 
    porque especificou a chave estrangeira, do outro jeito nao especifica.
 
 atualizar o nome da turma
 */

CREATE TABLE escola.Turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_tuma VARCHAR(100),
    ano_letivo YEAR,
    id_professor INT,
    FOREIGN KEY (id_professor)
    REFERENCES escola.professor(id_professor)

);


CREATE TABLE escola.matricula (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    data_matricula DATE,
    id_aluno INT,
    id_turma INT,
    Foreign Key (id_aluno) REFERENCES escola.aluno(id_aluno),
    Foreign Key (id_turma) REFERENCES escola.turma(id_turma)

);

CREATE TABLE escola.professor_materia (
    id_professor INT,
    id_materia INT,
    Foreign Key (id_professor) REFERENCES escola.professor(id_professor),
    Foreign Key (id_materia) REFERENCES escola.materia(id_materia)

);

CREATE TABLE escola.base_salarial (
    base INT PRIMARY KEY AUTO_INCREMENT,
    salario_minimo INT CHECK (salario_minimo BETWEEN 0 AND 9999),
    salario_maximo INT CHECK (salario_maximo BETWEEN 0 AND 9999)
);

/* inserir dados na tabela */
CREATE TABLE escola.nota (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_materia INT,
    nota DECIMAL(4,2),
    data_avaliacao DATE,

    FOREIGN KEY (id_aluno)
        REFERENCES escola.aluno(id_aluno),

    FOREIGN KEY (id_materia)
        REFERENCES escola.materia(id_materia)
);
/* inserir dados na tabela */

ALTER TABLE turma
CHANGE nome_tuma nome_turma VARCHAR(100);

DESC escola.base_salarial;

ALTER TABLE escola.professor
ADD COLUMN salario_professor INT CHECK (salario_professor BETWEEN 0 AND 9999);

desc escola.matricula;

DROP Table turma;

/* Dados a serem inseridos */

ALTER TABLE escola.professor
MODIFY salario_professor DECIMAL(10,2);

ALTER TABLE escola.aluno
ADD situacao VARCHAR(20)
CHECK (
    situacao IN (
        'Aprovado',
        'Reprovado',
        'Recuperacao'
    )
);

ALTER  TABLE escola.matricula
add faltas int check (faltas BETWEEN 0 AND 200);

/*adicionar a tabela que vai ser usada */

SHOW DATABASES;

USE escola;

SELECT DATABASE();

SHOW TABLES;