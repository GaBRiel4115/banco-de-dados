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
nome = 'Rodrigo';

-- filtrar ignorando registros duplicados
select distinct nome, idade
from alunos;

-- ordenar os alunos por nome
select * 
from alunos
order by nome asc;
-- desc também



-- selecionar os alunos com 
-- idade acima de 21
-- os dois mais velhos
select *
from alunos 
where 
idade > 21
order by idade DESC
limit 2;




-- selecione todos os alunos que:
alter table alunos drop column nota;
alter table alunos
add column nota int after idade;

update alunos set nota = 95 where id  = 1;
update alunos set nota = 87 where id  = 2;
update alunos set nota = 50 where id  = 3;
update alunos set nota = 60 where id  = 4;
update alunos set nota = 152 where id = 5;
update alunos set nota = 85 where id  = 6;
update alunos set nota = 10 where id  = 7;
update alunos set nota = 5 where id   = 8;

-- selecione todos os alunos que:
-- tenha nota maior ou igual a 70
-- ordenação decrescente por idade 
-- limitado a 3 alunos

select *
from alunos
where nota >= 70
order by idade DESC
limit 3;

select * from alunos;

-- atualizar informações de um registro
update alunos
set idade = 100,  nascimento = '1922-02-17'
where
id = 5;

-- select * from alunos
-- where
-- id = 5;


-- excluir um registro
delete from alunos
where id = 5;

-- operadores lógicos AND / OR

-- selecione todos os registros que tenham o nome igual a 'André Neves'
-- e idade igual a 100

select * from alunos
where
nome  = 'Rodrigo'
AND
idade = 22;

select * from alunos;

-- selecione todos os registros que tenham o nome igual 'Rodrigo'
-- ou idade igual a 22 anos 
select * from alunos
where
nome  = 'Rodrigo'
or
idade = 22;

-- Para saber o valor do auto_increment
SELECT AUTO_INCREMENT FROM information_schema.tables
WHERE table_name = 'alunos' AND table_schema = 'bd3';

-- negacao
-- selecionar todos os registros que não tenham 'Rodrigo' no nome
select * from alunos
where not nome = 'Rodrigo';

-- funções no SGBD
select * from alunos;
-- contar as ocorrências total de idade
select count(idade)
from alunos;

-- pegar a média das idades
select AVG(idade)
from alunos;

-- soma 
select SUM(idade)
from alunos;



-- menor idade
select MIN(idade)
from alunos;

-- maior idade
select MAX(idade)
from alunos;



-- procurar uma string dentro de um campo texto
select * from alunos;
-- 'Os pokemons salvaram o mundo'

-- 'pokemon'
select * from alunos
where
nome like '%Ro';

-- caracter curinga %



