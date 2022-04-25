--REDES SOCIAIS


--GO-> Sequência de execução
GO
CREATE DATABASE db_redesocial

GO
USE db_redesocial

--CRIAÇÃO DAS TABELAS
GO
CREATE TABLE Usuario
(
Id_Usuario INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Senha VARCHAR(100) NOT NULL,
)

GO
CREATE TABLE Tema
(
Id_Tema INT PRIMARY KEY IDENTITY NOT NULL,
Descricao VARCHAR(100) NOT NULL,
)

GO
CREATE TABLE Grupo
(
Id_Grupo INT PRIMARY KEY IDENTITY NOT NULL,
 Nome VARCHAR(50) NOT NULL,
 FK_Id_Tema INT NOT NULL,
 FK_Id_Usuario INT NOT NULL,
 FOREIGN KEY (FK_Id_Tema) REFERENCES Tema (Id_Tema),
 FOREIGN KEY (FK_Id_Usuario) REFERENCES Usuario (Id_Usuario)
)

GO
CREATE TABLE Postagem
(
Id_Postagem INT PRIMARY KEY IDENTITY NOT NULL,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
FK_Id_Usuario INT NULL,
FK_Id_Tema INT NOT NULL,
FK_Id_Grupo INT NOT NULL,
FOREIGN KEY (FK_Id_Usuario) REFERENCES Usuario (Id_Usuario),
FOREIGN KEY (FK_Id_Grupo) REFERENCES Grupo (Id_Grupo),
FOREIGN KEY (FK_Id_Tema) REFERENCES Tema (Id_Tema),
)

--INSERTS

INSERT INTO Usuario
VALUES
('Julio','julio@gmail.com','132435'),
('Choao','choao@gmail.com','121314'),
('Kauane','kau@outlook.com','123456')


INSERT INTO Tema 
VALUES
('Musica'),
('Games'),
('Igreja')


INSERT INTO Grupo
VALUES
('HendrixFanClub',1 ,2),
('Oficina G3',1 ,1),
('Lol da depressão',2 ,2),
('Bola de Neve Mauá',3, 1),
('Primeiro Comando Da Bléia',3 ,3)


INSERT INTO Postagem
VALUES
('Vodoo Child', 'Aniversário da música', 2, 1, 1),
('Turne G3', 'Em breve',1 ,1 ,2 ),
('Jinx Nerfada', 'Lascou legal ;-;',2 ,2 ,3 ),
('Culto De Domingo', 'As 18h, não perca!!',1 ,3 ,4 ),
('Chegou a mercadoria', 'As bíblia nova!!!',3 ,3 ,5 )


--SELECTS

SELECT
Usuario.Nome AS 'Nome Usuario',
COUNT(Grupo.Nome) AS 'Quantidade de grupos que participa'


FROM Usuario


FULL JOIN Grupo ON Usuario.Id_Usuario = Grupo.FK_Id_Usuario
FULL JOIN Tema ON Grupo.FK_Id_Tema = Tema.Id_Tema


WHERE Tema.Descricao IN ('Igreja', 'Games')
GROUP BY
Usuario.Nome