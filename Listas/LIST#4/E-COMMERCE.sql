--E-COMMERCE

--Criação das tabelas:
--O 'GO' define uma sequência de execução e a 

USE db_ecommerce


CREATE TABLE Usuario(
	id_Usuario INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Endereco VARCHAR(255) NULL
)

CREATE TABLE Produto(
	id_Produto INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Preco FLOAT NOT NULL,
	Forma_Pagamento VARCHAR(255) NOT NULL,
	Estoque INT NOT NULL
)

CREATE TABLE Venda(
	id INT PRIMARY KEY NOT NULL,
	Quantidade INT NOT NULL,
	Fk_Produto INT NOT NULL,
	Fk_Comprador INT NOT NULL,
	FOREIGN KEY (Fk_Produto) REFERENCES Produto (id_Produto),
	FOREIGN KEY (Fk_Comprador) REFERENCES Usuario (id_Usuario)
)

--INSERTS

 
USE db_ecommerce

INSERT INTO Usuario
VALUES
(1, 'Julio César', 'julio@gmail.com', '1234','Rua no meio da rua 19'),
(2, 'João Vitor', 'joaoe@gmail.com', '4321','Rua da pamonha 387'),
(3, 'Lucas Iluminado', 'lucas@gmail.com', '1213','Rua do sabão 29'),
(4, 'Gustavo Jequitibá', 'gustavo@gmail.com', '4342','Rua indefinida 198')

INSERT INTO Produto
VALUES
(1,'Tagima T530','Guitarra Eletrica Made In China',750.00,'CARTAO',3),
(2,'Elixyr 0.10','Jogo de cordas.Guitarra Eletrica.OriginalElixyr',150.00,'PIX',16),
(3,'Squier Korea 1995','Guitarra Eletrica Made In Korea 1995',2000.00,'CARTAO',1),
(4,'Bass Eagle Jazzmaster','Contrabaixo Elétrico Made In China',800.00,'CARTAO',5)

INSERT INTO Venda
VALUES
--QUANTIDADE|PRODUTO|COMPRADOR
(1,3,2,2),
(2,1,3,1)


--SELECTS


SELECT
Usuario.Nome AS Nome,
Usuario.Endereco AS Endereço,
Produto.Nome AS Produto,
Usuario.Email AS Email

FROM Usuario
INNER JOIN Venda ON Usuario.id_usuario = Venda.Fk_Comprador -
INNER JOIN Venda ON Usuario.id_usuario = Produto.id_produto 


SELECT*FROM Usuario
Where Nome LIKE 'Gustavo Jequitibá'

SELECT
Usuario.Nome AS Nome,
COUNT(*) AS 'Quantidade comprada'
FROM Usuario
INNER JOIN Venda ON Usuario.Id = Venda.Fk_Comprador
GROUP BY Usuario.nome;