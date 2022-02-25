-- BDIIIA05 - exercícios

CREATE DATABASE bd4;

USE bd4;
-- DROP TABLE IF EXISTS alunos;

-- create table
CREATE TABLE alunos (
	id INT AUTO_INCREMENT primary key,
	nome varchar (50),
	idade int (3),
    nascimento date DEFAULT NULL
);

-- insert
insert into alunos (nome, idade, nascimento) values ('leo', 10, '2011-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2010-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2008-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2007-07-05');

-- 1) Selecione todos os registros da tabela alunos
	select * from alunos;

-- 2) Retorne somente o nome e a idade das linhas que não tenham a idade nula
	select * from  
    alunos
    where
    idade
    is not null;
    
    
    

-- 3) Retorne todos os registros em ordem decrescente de nome
select *
from alunos
order by nome desc;

-- 4) Retorne o nome e a idade de somente dois registros
select nome, idade from alunos 
limit 2;




-- 5) Atualize o nome do registro com id = 1 para "Samuel"
update alunos
set nome = "Samuel"
where 
id = 1;

-- 6) Exclua o registro com id = 3
delete from alunos
where 
id = 3;


-- 7) Selecione os registros que tenham o nome = 'Samuel' ou idade = 14
select * from alunos
where
nome = 'Samuel'
or 
idade = '14';

-- 8) Selecione os registros que tenham o nome = 'joao' e idade = 14
select * from alunos
where
nome = 'joao'
AND
idade = 14;

-- 9) Selecione os registros que não possuem o nome = 'joao'
select * from alunos
where not nome = 'joao';

-- 10) Conte todas as idades da tabela
select count(idade)
from alunos;


-- 11) Recupere a média da idade dos alunos
select AVG(idade)
from alunos;

-- 12) Some a idade dos alunos
select SUM(idade)
from alunos;

-- 13) Selecione todos os registros que tenham em algum lugar do nome a string 'o'
select * from alunos
where
nome like '%o%';

-- 14) Selecione os registro com idade entre 10 e 12 anos
select * from alunos
where 
idade between 10 and 12;


-- 15) Selecione os registro com idade fora da faixa de 10 e 12 anos
select * from alunos
where 
idade not between 10 and 12;


-- 16) Selecione os alunos com data de nascimento entre '2008-05-12' e '2011-03-04'
select * from alunos
where
nascimento between '2008-05-12' and '2011-03-04';

-- 17) Retorne o nome usando o alias nome_do_cliente
select nome
AS nome_do_cliente
from alunos;
