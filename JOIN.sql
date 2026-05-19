
SELECT professor.id_professor, 
    professor.nome, 
    professor.especialidade, 
    turma.id_professor, 
    turma.nome_turma, 
    turma.ano_letivo
FROM professor JOIN turma 
ON professor.id_professor = turma.id_professor;

/* usando apelido nas tabelas 
    quando usar o apelido tudo no comando deve seguir o apelido colocado nas tabelas 
*/

SELECT P.id_professor, 
    P.nome,
    P.especialidade,
    T.id_professor,
    T.nome_turma,
    T.ano_letivo
FROM escola.professor P JOIN escola.turma T  
ON (P.id_professor = T.id_professor);

/* Join tridimencional usando 3 tabelas*/

SELECT A.nome,
    T.nome_turma,
    M.data_matricula
FROM escola.aluno A JOIN escola.matricula M 
ON (A.id_aluno = M.id_aluno )
JOIN escola.turma T
ON (M.id_turma = T.id_turma);

/* jução não identica */

SELECT P.nome, P.especialidade, P.salario_professor, B.base, B.salario_minimo, B.salario_maximo
FROM escola.professor P JOIN escola.base_salarial B
ON (p.salario_professor BETWEEN B.salario_minimo AND B.salario_maximo);