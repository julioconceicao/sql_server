--MARKET-PLACE


--INICIO
GO
CREATE DATABASE db_marketplace
GO
USE db_marketplace

--CRIAÇÃO DAS TABELAS
GO
CREATE TABLE Usuario (
	Id_usuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (50) NOT NULL,
	Email VARCHAR (50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Endereco VARCHAR (100) NULL,
)

GO
CREATE TABLE Categoria (
	Id_categoria INT PRIMARY KEY NOT NULL,
	Descricaoo VARCHAR (50)
)

GO
CREATE TABLE Produto (
	Id_produto INT PRIMARY KEY IDENTITY NOT NULL,
	NomeProduto VARCHAR (50) NOT NULL,
	Descricao VARCHAR (150) NOT NULL,
	Preco FLOAT NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES Usuario (Id_usuario),
	FOREIGN KEY (FK_Categoria) REFERENCES Categoria (Id_categoria)
)

GO
CREATE TABLE Compra(
	FK_Comprador INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES Usuario (Id_Usuario),
	FOREIGN KEY (FK_Produto) REFERENCES Produto (Id_produto)
)


--INSERTS

INSERT INTO Usuario
VALUES
('Julio','juju@email.com','131415','Rua Jeripoca- 10'),
('César','cesinha@gmail.com','123456','Rua Calabresa - 168'),
('Claudia','clau@outlook.com','989796','Rua do Sabão- 1234'),
('Ludmila','mila@email.com','123456','Rua Angelo- 19')

INSERT INTO Categoria
VALUES
(1, 'Instrumentos'),
(2, 'Acessórios')

INSERT INTO Produto
VALUES
('Guitarra', 'Squier Korea 1995', 2000.00, 1, 1),
('Cordas','Corda 0.10 Elixyr', 149.99,4,2),
('Meia Lua', 'Faz tchictchictchic',90.00,2,1),
('Bateria', 'Badum-tsss', 8000.00, 2,1),
('Abafador para guitarra','shhhh',59.99,3,2)

INSERT INTO Compra
VALUES
(1,3),
(2,4),
(4,5),
(3,2),
(1,1)

--SELECTS

SELECT
Usuario.Nome AS Nome,
COUNT(Compra.FK_Comprador) AS QtdProduto
--Produtos.NomeProduto AS 'Nome Produto'
FROM Usuario
LEFT JOIN Compra
ON Usuario.Id_usuario = Compra.FK_Comprador

LEFT JOIN Produto ON Compra.FK_Produto = Produto.Id_produto
GROUP BY Usuario.Nome