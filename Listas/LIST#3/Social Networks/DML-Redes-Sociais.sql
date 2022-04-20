use db_RedeSocial

insert into Usuarios
value
(1, 'Julio Conceicao', 'julio@gmail.com', '2132435465'),
(2, 'Cesar Julio', 'cesar.julio@outlook.com', '9089786756'),
(3, 'Jimi Hendrix', 'bffdojulio@gmail.com', '414243454647'),

insert into Categoria
value
(1, 'Meme'),
(2, 'FakeNews'),
(3, 'VagasEmprego'),
(4, 'Social')

insert into Grupos
value
(1, 'Alunos Gen', 4),
(2, 'Gen-talha', 1),
(3, 'Grupinho da empregabilidade', 3),
(4, 'Fanclub JH')

insert into Postagens
value
(32ddfs47923847, 'Viajem Para O Interior', 'Foi uma delicinha', 1, 4, 1),
(128472938dfd, 'Procura-se Baterista', 'Início imediato', 3, 3, 5),

SELECT * FROM Usuarios
WHERE Nome like 'Jimi'

--Está dando algum erro que não consigo resolver...
--"Sintaxe incorreta próxima a 'value'."