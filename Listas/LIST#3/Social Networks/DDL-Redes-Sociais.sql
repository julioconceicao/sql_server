CREATE DATABASE db_RedeSocial

USE db_RedeSocial

create table Usuarios 
(
Id_Usuarios INT PRIMARY KEY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Senha VARCHAR(100) NOT NULL
)

CREATE TABLE Categoria 
(
Id_Categoria INT PRIMARY KEY NOT NULL,
Descricao VARCHAR(100) NOT NULL,
)

CREATE TABLE Grupos
(
Id_Grupos INT PRIMARY KEY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Fk_Id_Categoria INT NOT NULL,
FOREIGN KEY (Fk_Id_Categoria) REFERENCES Categoria (id_Categoria)
)

CREATE TABLE Postagens
(
Id_Postagens INT PRIMARY KEY NOT NULL,
Titulo VARCHAR(255) NOT NULL,
Descricao VARCHAR(255) NOT NULL,
Fk_Id_Usuarios INT NULL,
Fk_Id_Categoria INT NOT NULL, 
Fk_id_Grupos INT NOT NULL,
FOREIGN KEY (Fk_Id_Usuarios) REFERENCES Usuarios (id_Usuarios),
FOREIGN KEY (Fk_Id_Grupos) REFERENCES Grupos (id_Grupos),
FOREIGN KEY (Fk_Id_Categoria) REFERENCES Categoria (id_Categoria)
)