-- Execute o script na raiz desse repositório chamado "gestao_academica.sql" (caso já tenha o banco, drop o schema e crie um novo com base nesse script).
 
-- Crie um novo script e cole nele os seguintes comentários:
 
-- Selecionar todos os alunos
SELECT * FROM Aluno;
 
-- Selecionar apenas os nomes e CPFs dos alunos
SELECT Nome,Cpf FROM Aluno;
 
-- Selecionar alunos matriculados após uma data específica
SELECT * FROM Matricula 
WHERE DataMatricula > '2024-02-01';
 
-- Contar quantas disciplinas existem com carga horária maior que X
 SELECT COUNT(*) AS QuantidadeDisciplina
 FROM Disciplina 
 WHERE Horas > 40;
 
-- Contar quantas matrículas existem para cada curso
 
-- Contar quantas disciplinas cada professor leciona
 
-- Combinar nome do aluno e data da matrícula
 
-- Combinar nome do curso e nome do aluno
 
-- Contar quantos alunos se matricularam em cada curso
 







