
drop database db_minhadb;

create database db_minhadb;

use db_minhadb;

create table telefones(
codigo int,
nome varchar(50),
telefone char(15)
);

show tables;
desc telefones;
insert into telefones (codigo, nome, telefone) values (1,'Rafael Carrenho', '(11) 9999-9999');
insert into telefones values (2,'Gabriel Ricardo', '(11) 8888-8888');
insert into telefones values (3, '(11) 7777-7777','Alex Andrade');

select * from telefones;

update telefones set nome = 'Alex Andrade', telefone = '(11) 7777-7777' where codigo = 3;

select * from telefones;

insert into telefones (codigo, nome, telefone) values (4,'Eric', '(11) 1000-1000');

select * from telefones;

delete from telefones where codigo = 4;

select codigo as 'Código', nome as 'Nome', telefone as 'Telefone' from telefones;

/*Alias e coluna virtual*/
select 'Sim' as 'Amigo', nome, telefone from telefones;

select codigo * 3.141592 as 'Código vezes PI', nome, telefone from telefones;

/* delect Distinct */
select distinct nome from telefones;