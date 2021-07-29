--CRIAÇÃO DA DATABASE
CREATE DATABASE ecommerce;

CREATE TABLE clientes( --Nome da tabela
  cpf char(11) UNIQUE NOT NULL, --Campos, seus tipos e possiveis restrições
  nome varchar(150) NOT NULL
);

CREATE TABLE vendedores( --Nome da tabela
  cpf char(11) UNIQUE UNIQUE NOT NULL, --Campos, seus tipos e possiveis restrições
  nome varchar(150) NOT NULL 
);

CREATE TABLE pedidos(
    id serial PRIMARY KEY,
    valor int NOT NULL,
    cliente_cpf char(11) NOT NULL REFERENCES clientes(cpf),
    vendedor_cof char(11) NOT NULL REFERENCES vendedores(cpf)
);

CREATE TABLE categorias(
    id serial PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE produtos(
    id serial PRIMARY KEY,
    nome varchar(100) NOT NULL,
    descricao text,
    preco int,
    quantidade_em_estoque int,
    categoria_id int REFERENCES categorias(id)
);

CREATE TABLE itens_do_pedido(
    id serial PRIMARY KEY,
    pedido_id serial REFERENCES pedidos(id),
    quantidade int,
    produto_id int REFERENCES produtos(id)
);
-------------
--1
INSERT INTO categorias (nome)VALUES('frutas');
INSERT INTO categorias (nome)VALUES('verduras');
INSERT INTO categorias (nome)VALUES('massas');
INSERT INTO categorias (nome)VALUES('bebidas');
INSERT INTO categorias (nome)VALUES('utilidades');
-------------
--2

INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Mamão', 'Rico em vitamina A, potássio e vitamina C', 300, 123, 1)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Maça', 'Fonte de potássio e fibras.', 90, 34, 1)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Cebola', 'Rico em quercetina, antocianinas, vitaminas do complexo B, C.', 50, 76, 2)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Abacate', 'NÃO CONTÉM GLÚTEN.', 150, 64, 1)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Tomate', 'Rico em vitaminas A, B e C.', 125, 88, 2)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Acelga', 'NÃO CONTÉM GLÚTEN.', 235, 13, 2)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Macarrão parafuso', 'Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado', 1200, 500, 3)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Massa para lasanha', 'Uma reunião de família precisa ter comida boa e muita alegria.', 875, 19, 3)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Refrigerante coca cola lata', 'Sabor original', 350, 189, 4)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Refrigerante Pepsi 2l', 'NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.', 700, 12, 4)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Macarrão parafuso', 'Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado', 1200, 500, 4)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Agua mineral sem gás', 'Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro.', 130, 478, 4)


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Vassoura', 'Pigmento, matéria sintética e metal.', 2350, 30, 5);


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Saco para lixo', 'Reforçado para garantir mais segurança.', 1340, 90, 5);


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Escova dental', 'Faça uma limpeza profunda com a tecnologia inovadora', 1000, 44, 5);


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Balde para lixo 50l', 'Possui tampa e fabricado com material reciclado', 2290, 55, 5);


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Manga', 'Rico em Vitamina A, potássio e vitamina C', 198, 176, 1);


INSERT INTO produtos
(nome, descricao, preco, quantidade_em_estoque, categoria_id)
VALUES('Uva', 'NÃO CONTÉM GLÚTEN.', 420, 90, 1);

-------------
--3

INSERT INTO clientes
VALUES('82539841031', 'Rodrigo Sampaio');


INSERT INTO clientes
VALUES('23262546003', 'Beatriz Souza Santos');


INSERT INTO clientes
VALUES('28007155023', 'Carlos Eduardo');
