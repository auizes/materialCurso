drop database dbRestaurante;

create database dbRestaurante;

use dbRestaurante;

create table tbProdutos(
idProd int not null auto_increment,
nome varchar(50) not null,
descricao varchar(200) not null,
valor decimal(9,2) not null default 0.0,
imagem blob not null,
primary key(idProd)
);

create table tbFuncionarios(
idFunc int not null auto_increment,
nome varchar(50)not null,
senha varchar(50)not null,
primary key(idFunc)
);

create table tbMesa(
idMesa int not null auto_increment,
QrCode blob not null,
numeroMesa char(5) not null,
primary key(idMesa)
);

create table tbvendas(
idVen int not null auto_increment,
idProd int not null,
idMesa int not null,
idFunc int not null,
data datetime not null,
valor decimal(9,2)not null default 0.00,
primary key(idVen),
foreign key(idProd)references tbProdutos(idProd),
foreign key(idMesa)references tbMesa(idMesa),
foreign key(idFunc)references tbFuncionarios(idFunc)
);

create table tbRegistro(
idRegistro int not null auto_increment,
idVen int not null,
Prod varchar(50) not null,
Mesa char(5) not null,
Func varchar(50) not null,
data datetime not null,
valor decimal(9,2)not null default 0.00,
primary key(idRegistro),
foreign key(idVen)references tbvendas(idVen)
);
