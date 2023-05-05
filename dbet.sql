create database tbEsacionamento;

use tbEsacionamento;

CREATE TABLE ESTACIONAMENTO
(
codigo int auto_increment,
placa varchar(12),
cor varchar(10),
modelo varchar(10),
ano char(4),
data de entrada date,
hora entrada time,
data saida date,
hora saida time,
primary key(codigo)
);


insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('thrt7484','azul',
'ferrari458italia', '2009', '12/11/2015', '11:31:00', '13/11/2015', '12:00:00');


insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('xtr4548','black',
'bugattiChiron', '2016', '25/12/2020', '13:20:00', '26/12/2020', '14:40:00');

insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('tug2169','branco',
'LamborghiniAventador', '2011', '01/01/2021', '10:10:00', '02/01/2021', '13:00:00');


insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('ert1245','vermelho',
'mclarenp1', '2013', '10/02/2021', '16:50:00', '11/02/2021', '17:30:00');


insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('jgy6554','ciano',
'KoenigseggAgera', '2018', '20/02/2021', '09:10:00', '21/02/2021', '10:00:00');


insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('wqr1456','bege',
'porschepanamera', '2014', '22/02/2021', '08:30:00', '23/02/2021', '09:00:00');

insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('lgy7852','vermelho',
'audir8', '2007', '23/02/2021', '14:00:00', '24/02/2021', '15:30:00');

insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('fhd2554','amarelo',
'camaro', '2021', '24/02/2021', '15:40:00', '25/02/2021', '14:30:00');

insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('fgf5456','branco',
'lykanhypersport', '2014', '08/03/2021', '12:00:00', '09/03/2021', '13:0:00');

insert into tbEsacionamento(codigo,placa,cor,modelo,ano,data entrada,hora entrada,data saida,hora saida)values('yui1234','preto',
'fuscãopreto', '2003', '09/03/2021', '13:20:00', '10/03/2021', '15:30:00');


