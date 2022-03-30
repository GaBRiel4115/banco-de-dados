use contatos;

select * from clientes;

drop table clientes;

create table clientes (
	id int auto_increment primary key,
    nome varchar(255) not null,
    email varchar(255) not null
);