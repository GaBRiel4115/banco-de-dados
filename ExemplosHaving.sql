CREATE DATABASE bd5;

use bd5;

CREATE TABLE inscricoes (
	id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(200) NOT NULL,
    idade int(3) NOT NULL,
    cidade varchar(200) NOT NULL
);

insert into inscricoes (nome, idade, cidade) values ('André', '18,' 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Igor', '19', 'São Paulo');
insert into inscricoes (nome, idade, cidade) values ('David', '20', 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Wando', '21', 'Recife');
insert into inscricoes (nome, idade, cidade) values ('Paula', '22', 'Belo Horizonte');
insert into inscricoes (nome, idade, cidade) values ('Graciela','24', 'Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Renata', '25', 'Vitoria');
insert into inscricoes (nome, idade, cidade) values ('Leticia', '26','Rio de Janeiro');
insert into inscricoes (nome, idade, cidade) values ('Milena', '27', 'São Paulo');
insert into inscricoes (nome, idade, cidade) values ('Patricia', '28', 'São Paulo');

SELECT cidade, count(id)
FROM inscricoes
GROUP BY cidade
HAVING count(id) >= 2
ORDER BY COUNT(id) desc;

CREATE TABLE vendedores (
	id int(11)PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(200) NOT NULL
);

CREATE TABLE vendas (
	id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(200) NOT NULL,
    vendedor_id int(11),
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)    
);

insert into vendedores (nome) values ('André');
insert into vendedores (nome) values ('Pedro');
insert into vendedores (nome) values ('João');

insert into vendas(nome, vendedor_id) values('Venda 1', 1);
insert into vendas(nome, vendedor_id) values('Venda 2', 1);
insert into vendas(nome, vendedor_id) values('Venda 3', 1);
insert into vendas(nome, vendedor_id) values('Venda 4', 2);
insert into vendas(nome, vendedor_id) values('Venda 5', 2);
insert into vendas(nome, vendedor_id) values('Venda 6', 3);

-- Desejo ordenar os vendedores começando pelo com maior número de vendas
SELECT vendedores.nome, COUNT(vendas.id) AS QuantidadeDeVendas FROM vendas
INNER JOIN vendedores ON vendas.vendedor_id = vendedores.id
GROUP BY vendedores.nome
HAVING COUNT(vendas.id) >= 2
ORDER BY COUNT(vendas.id) desc;