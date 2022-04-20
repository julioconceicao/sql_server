
use db_ecommerce

INSERT INTO Usuarios
VALUES
( 1, 'Jorge Luiz', 'jogi@outlook.com', 'jorge123', 'Rua Angelo Fração'),
( 2, 'Carlos Alberto', 'cazalbe@email.com', 'casbe757', 'Av. Paulista'),
(3, 'Sophia', 'sophia@gmail.com', 'sop549','Av. do Brechó 610')

INSERT INTO Produtos
VALUES
(1, 1999.99, 1, 'Guitarra Squier', 'Pix ou Crédito', 3),
(2, 578.07, 1, 'Caixa Bateria', 'Pix ou Crédito', 1),
(3, 158.74, 1, 'Cordas Elixyr', 'Pix ou Crédito', 2)

INSERT INTO Entrega
VALUES
(1, 'Entrega de Equipamentos', '22/06/2022', 3, 1),
(2, 'Entrega de Intrumentos de Corda', '18/04/2022', 2, 3),
(3, 'Entrega de Instrumentos de Percussão', '23/09/2022',1, 2)

SELECT * FROM Usuarios
WHERE Nome LIKE 'Jorge Luiz'

SELECT * FROM Produtos
WHERE Preco BETWEEN 5.07 AND 907.54

SELECT * FROM Entrega
WHERE PrevisaoDeEntrega LIKE '23/09/2022'