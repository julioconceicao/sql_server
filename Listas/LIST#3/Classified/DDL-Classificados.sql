go
use master
go
drop database db_classified
go
create database db_classified
go

use db_classified

go
create table Usuario
(
	id_usuario int primary key not null,
	CPF_CNPJ varchar(255)not null,
	Classe varchar(255)not null,
	Area varchar(255)not null,
	Contact varchar(255)not null
)
go
create table Anuncio
(
	id_anuncio int primary key not null,
	Classe varchar(255) not null,
	Descricao varchar(255) not null,
	Area varchar(255) not null,
	Contato varchar(255) not null,
	FK_id_usuario int not null,
	foreign key (FK_id_usuario) references Usuario (id_usuario)
)


