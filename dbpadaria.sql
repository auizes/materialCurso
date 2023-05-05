drop database dbpadaria;
create database dbpadaria;

use dbpadaria;

create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(200) not null,
email varchar(200) not null,
cpf char(14) not null unique,
salario decimal(9,2)not null default 0.0 check(salario >= 0),
sexo char(1)default 'F' check(sexo in('M','F')),
ctps char(6) not null default '000000',
endereco varchar(200),
numero char(10),
bairro varchar(200),
cep char(9),
primary key(codfunc));

create table tbfornecedores(
codforn int not null auto_increment,
nome varchar(200) not null,
cnpj char(14) not null unique,
inscest char(9) not null unique,
email varchar(200) not null,
primary key(codforn));

create table tbclientes(
codcli int not null auto_increment,
nome varchar(200) not null,
cpf char(14) not null unique,
email varchar(200)not null,
telcel char(10),
primary key(codcli));

create table tbusuarios(
codusu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc)references tbfuncionarios(codfunc));

create table tbprodutos(
codprod int not null auto_increment,
descricao varchar(200) not null,
valor decimal(9,2) not null default 0.0 check(valor >= 0),
dataEntrada datetime not null,
validade datetime not null,
codforn int not null,
primary key(codprod),
foreign key(codforn)references tbfornecedores(codforn));

create table tbvendas(
codvenda int not null auto_increment,
codprod int not null,
codusu int not null,
codcli int not null,
dataVenda datetime,
horaVenda time,
quantidade decimal(9,2) not null default 0.0 check(quantidade >= 0),
valor decimal(9,2)not null default 0.0 check(valor >=0),
primary key(codvenda),
foreign key(codprod)references tbprodutos(codprod),
foreign key(codusu)references tbusuarios(codusu),
foreign key(codcli)references tbclientes(codcli));