-- DDL Update
UPDATE professor 
SET especializacao = 'Inteligencia Artifical' 
WHERE id = 5;

select * from disciplina;

UPDATE disciplina
SET nome = 'Matemática Avançada', horas = 80
WHERE ID = 1; 

-- Update de toas as horas para 40 onde Horas for maior que 40
UPDATE disciplina
SET horas = 40
WHERE horas > 40;

-- DML Delete
DELETE FROM disciplina WHERE id = 3;