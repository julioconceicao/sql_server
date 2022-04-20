

create database db_ecommerce

use db_ecommerce

CREATE TABLE Usuarios(
	Id_Usuarios INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Endereco VARCHAR(255) NULL
)
CREATE TABLE Produtos(
	Id_Produtos INT PRIMARY KEY NOT NULL,	
	Preco FLOAT NOT NULL,
	Quantidade INT NOT NULL,
	Categoria VARCHAR(50) NULL,
	TipoDePagamento VARCHAR(50) NOT NULL,
	FK_Id_Usuarios INT NOT NULL,
	FOREIGN KEY (FK_Id_Usuarios) REFERENCES Usuarios (Id_Usuarios)
)

CREATE TABLE Entrega(
	Id_Entrega INT PRIMARY KEY NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	PrevisaoDeEntrega VARCHAR(255) NOT NULL,
	FK_Id_Usuarios INT NOT NULL,
	FK_Id_Produtos INT NOT NULL,
	FOREIGN KEY (FK_Id_Usuarios) REFERENCES Usuarios (Id_Usuarios),
	FOREIGN KEY (FK_Id_Produtos) REFERENCES Produtos (Id_Produtos)
)


CREATE TABLE Compras(
	FK_Comprador INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES Usuarios (Id_Usuarios),
	FOREIGN KEY (FK_Produto) REFERENCES Produtos (Id_Produtos)
)
