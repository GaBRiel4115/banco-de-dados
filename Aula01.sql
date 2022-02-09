CREATE DATABASE bd3;
USE bd3;

create table alunos(
id int auto_increment primary key,
nome varchar(255),
idade int (3),
nascimento date default NULL
);

 -- drop table alunos

-- inserir dados
insert into alunos (nome, idade, nascimento) values('Gabriel','20','2001-06-04');
insert into alunos (nome, idade, nascimento) values('Ana', '55','1999-05-25');
insert into alunos (nome, idade, nascimento) values('Rodrigo', '22', '2022-02-08');
insert into alunos (nome, idade, nascimento) values('Joana','22', '1900-05-01');
insert into alunos (nome, idade, nascimento) values('kaio', NULL, NULL);
insert into alunos (nome, idade, nascimento) values('Rodrigo', '22', '2022-03-08');


-- seleciona todos os registros
select * from alunos;

-- selecionar somente um campo
select nome,nascimento from alunos;

-- filtrar resultados
select * 
from alunos 
WHERE idade is null;

-- filtrar por campo idade não nulo e nome igual a 'Rodrigo'
select * 
from alunos 
where
idade is not null -- idade não nulo
AND
nome= 'Rodrigo';

-- filtrar ignorando registros duplicados
select distinct nome, idade
from alunos;





