drop database dbClinicaMedica;

create database dbClinicaMedica;

use dbClinicaMedica;

create table tbMedico(
idMedico int not null auto_increment,
nome varchar(100) not null,
crm char(10) not null unique,
email varchar(100),
tel char(10) not null,
primary key(idMedico)
);

create table tbPaciente(
idPaciente int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
tel char(10) not null,
cpf char(14) not null unique,
convenio char(19) not null,
primary key(idPaciente)
);

create table tbReceitaMedica(
idReceita int not null auto_increment,
descricao varchar(250),
primary key(idReceita)
);

create table tbConsulta(
idConsulta int not null auto_increment,
dataConsulta datetime,
idMedico int not null,
idPaciente int not null,
idReceita int not null,
primary key(idConsulta),
foreign key(idReceita)references tbReceitaMedica(idReceita),
foreign key(idMedico)references tbMedico(idMedico),
foreign key(idPaciente)references tbPaciente(idPaciente)
);

insert into tbReceitaMedica(descricao)
values('Tomar Dipirona 500mg duas vezes na semana por 5 dias');

insert into tbMedico(nome,crm,email,tel)
values('Dr. Roberto Carlos','11111111-1',
'roberto.carlos@medicos.com','91111-1111');
insert into tbMedico(nome,crm,email,tel)
values('Dra. Christine Taranto','22222222-2',
'christine.taranto@medicos.com','91212-1212');

insert into tbPaciente(nome,email,tel,cpf,convenio)
values('Geraldo Antunes','geraldo.antunes@gmail.com','95555-5555','999.888.777-11','555.222.666.333.999');

insert into tbConsulta(dataConsulta,idMedico,idPaciente,idReceita)
values('2022/05/05',2,1,1);
