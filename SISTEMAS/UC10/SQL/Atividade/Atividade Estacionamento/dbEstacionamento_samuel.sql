drop database dbEstacionamento;

-- Criando banco de dados
create database dbEstacionamento;

-- Visualizar banco
show databases;

-- Acessando o banco de dados
use dbEstacionamento;


-- Criando tables para banco de dados
create table tbControle(
codCont int auto_increment,
placa varchar(10),
cor varchar(20),
modelo varchar(10),
ano varchar(4),
data_entrada date,
hora_Entrada time,
data_Saida date,
hora_Saida time,
primary key(codCont)
);

-- Adicionando Valores 

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('DOI-9301','Preto','Palio','2010','2022-11-10','10:00','2022-11-10','12:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('ABC-1234','Azul','Civic','2010','2022-11-09','10:30','2022-11-09','12:30');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('CBA-4321','Vermelho','Fit','2009','2022-11-08','08:10','2022-11-09','10:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('AEI-6754','Prata','Argo','2008','2022-11-07','08:20','2022-11-07','16:30');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('CAF-8976','Amarelo','Uno','2007','2022-11-06','08:20','2022-11-07','13:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('GHJ-8906','Vermelho','Uno','2022','2022-11-06','10:00','2022-11-06','11:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('JHT-1234','Azul','Corola','2019','2022-11-06','09:10','2022-11-06','18:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('JKH-9546','Preto','Strada','2016','2022-11-05','07:00','2022-11-05','14:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('GJH-7895','Laranja','Corsa','2016','2022-11-05','08:00','2022-11-05','18:00');

insert into tbcontrole(placa,cor,modelo,ano,data_entrada,hora_Entrada,data_Saida,hora_Saida)
	values('LKJ-5641','Preto','Prisma','2018','2022-11-04','07:00','2022-11-04','07:30');


-- Alterar pelo menos 5 registros 
update tbControle set cor = 'Branco' where modelo = 'Uno';
update tbControle set hora_Entrada = '00:00' where hora_Entrada = '08:20';
select * from tbControle;
	
-- Apagar pelo menos 3 registros
delete from tbControle where cor = 'preto';
select * from tbControle;

-- Pesquisar os carros pelo nome
select * from tbControle where modelo = 'Uno' or modelo = 'Fit';
select * from tbControle;

-- Pesquisar os carros pelo código
select * from tbControle where codCont = 7;
select * from tbControle;

-- Pesquisar os carros pela data de entrada
select * from tbControle where data_entrada = '2022-11-05';
select * from tbControle;

-- Pesquisar os carros pela pela cor
select * from tbControle where cor = 'preto';
select * from tbControle;

-- Pesquisar os carros pela pelo modelo
select * from tbControle where modelo = 'Uno';
select * from tbControle;

-- Visualizar tabelas
show tables;

select * from tbControle;
