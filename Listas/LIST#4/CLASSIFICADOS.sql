--CLASSIFICADOS

--CRIAÇÃO DAS TABELAS

go
CREATE DATABASE db_classificados

go
USE db_classificados


go
CREATE TABLE tb_usuario
(
	Id_Usuario INT PRIMARY KEY IDENTITY NOT NULL,
	CPF_CNPJ VARCHAR(20) NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	Regiao VARCHAR(50) NOT NULL,
	Contato VARCHAR(50) NOT NULL
)

go
CREATE TABLE tb_anuncio
(
	Id_Anuncio INT PRIMARY KEY IDENTITY NOT NULL,
	Classe VARCHAR(50) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	Regiao VARCHAR(50) NOT NULL,
	Contato VARCHAR(20) NOT NULL,
	FK_Id_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Id_Usuario) REFERENCES tb_usuario (Id_Usuario)
)

--INSERTS

INSERT INTO tb_usuario
VALUES
('356.452.542-98', 'Anunciante', 'SP', '11 9425-7474'),
('654.463.986-785', 'Anunciante', 'RJ', '21 96820-3539'),
('572.582.783-10', 'Anunciante', 'SP', '11 96830-3339')

INSERT INTO tb_anuncio
VALUES
('Instrumento', 'Tagima T530', 'SP', '11 957472-7474', 1),
('Instrumento', 'Seresta', 'SP', '11 957472-7474', 3),
('Acessório', 'Correia', 'SP', '11 957472-7474', 2),
('Instrumento', 'Eagle', 'SP', '11 957472-7474', 3),
('Acessório', 'Pedal', 'SP', '11 957472-7474', 3)


SELECT 
tb_usuario.Contato AS 'Contato',
tb_anuncio.Classe AS	'Classe',
COUNT(tb_anuncio.Descricao) AS 'Descrição',
tb_anuncio.Regiao AS 'Região'
FROM tb_usuario
RIGHT JOIN tb_anuncio
ON tb_usuario.Id_Usuario = tb_anuncio.FK_Id_Usuario
WHERE tb_anuncio.Classe LIKE '%o%' AND tb_anuncio.Descricao = 'Pedal'

GROUP BY tb_anuncio.Classe,
tb_usuario.Contato,
tb_anuncio.Regiao