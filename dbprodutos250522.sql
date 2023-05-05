drop database dbprodutos2205;
create database dbprodutos2205;

use dbprodutos2205;

create table tbprodutos(
codProduto int not null auto_increment,
descricao varchar(200) not null,
precovenda decimal(9,2) not null default 0 check(precovenda >= 0),
precocompra decimal(9,2) not null default 0 check(precocompra >= 0),
estoque int not null default 0,
primary key (codProduto));

