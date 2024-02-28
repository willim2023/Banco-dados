-- -----------------------
-- consultas básicas------
-- -----------------------

-- Exemplo: Selecionar todos os alunos
SELECT * FROM Aluno;

-- SELECT
-- FROM
-- WHERE 
-- ORDER BY

SELECT nome, cpf
FROM aluno;

SELECT *
FROM aluno
WHERE matricula > 3;

SELECT *
FROM aluno
WHERE matricula > 3
ORDER BY nome;

-- Operadores Matemáticos e Lógicos:
SELECT * FROM disciplina;

SELECT nome, horas
FROM disciplina
WHERE horas >= 40 AND horas <= 50;

-- Aliases para melhor Legibilidade
SELECT nome AS nome_disciplina, horas AS carga_horaria
FROM disciplina;

-- Exiba da tabela professor, todos os professores por ordem alfabetica
-- Onde o professor tenha ID maior que 2 e menor do que 6
-- Não exibindo a especialização e mudando a coluna "Nome" para "Nome_Professor"

SELECT nome AS nome_professor
FROM professor
WHERE id > 2 AND id < 6
ORDER BY nome;

-- Exemplo: Contar quantas disciplinas existem
SELECT COUNT(*) AS QuantidadesDeDisciplinas
FROM disciplina
WHERE horas > 50;

-- Me informe qunatas matrículas foram feitas no curso de ID 2
SELECT COUNT(*) AS QuantidadeMatriculas
FROM matricula
WHERE curso_id = 2;

-- Exemplo: Selecionar professor com especialização que envolva Tecnologia
SELECT *
FROM professor
WHERE especializacao LIKE '%tecnologia%';

-- Exercicio: Selecione todos os cursos que terminem com "medicina" ou comecem com a letra "D"
SELECT *
FROM curso
WHERE nome LIKE '%medicina' OR nome LIKE 'D%';

-- Utilizando o DISTINCT para Obter Valores Distintos
SELECT DISTINCT especializacao FROM professor;

-- ---------------------------------
-- Consultas Intermediarias
-- ---------------------------------

-- Exemplo 1: Combinar dados de aluno e matricula usando INNER JOIN
SELECT aluno.nome, aluno.cpf, matricula.DataMatricula
FROM aluno
INNER JOIN matricula ON aluno.Matricula = matricula.Aluno_ID;

-- Exemplo 2: Combinar dados de professor e disciplina usando INNER JOIN
SELECT professor.nome AS Nome_Professor, disciplina.nome AS Nome_Disciplina
FROM professor
INNER JOIN professores_disciplinas ON professor.id = professores_disciplinas.professor_ID
INNER JOIN disciplina ON professores_disciplinas.Disciplina_ID = disciplina.id;




