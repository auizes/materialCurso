drop database dbequipe_venda;
create database dbequipe_venda;
use dbequipe_venda;

create table tbprodutos(
idProd int not null auto_increment,
nome varchar(45) not null,
primary key(idProd));

create table tbvendedor(
idVendedor int not null auto_increment,
nome varchar(45) not null,
primary key(idVendedor));

create table tbequipe(
idEquipe int not null auto_increment,
nome varchar(45) not null,
primary key(idEquipe));

create table tbvenda(
idVenda int not null auto_increment,
idProd int not null,
idVendedor int not null,
idEquipe int not null,
primary key(idVenda),
foreign key(idProd)references tbprodutos(idProd),
foreign key(idVendedor)references tbvendedor(idVendedor),
foreign key(idEquipe)references tbequipe(idEquipe));