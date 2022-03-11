use bd4;

-- create table
create table categorias (
	id int(11) primary key auto_increment,
    nome varchar(200) not null
    );
    
create table produtos (
	id int(11) primary key auto_increment,
    nome varchar(200) not null,
    valor float,
    categoria_id int(11),
    foreign key (categoria_id) references categorias(id)
);

-- insert categorias
insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');

-- insert produtos
insert into produtos (nome, valor, categoria_id) value ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) value ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) value ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) value ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) value ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) value ('cadeira', 80, 3);

select * from categorias;

select *
from produtos
inner join categorias
on produtos.categoria_id = categorias.id;

