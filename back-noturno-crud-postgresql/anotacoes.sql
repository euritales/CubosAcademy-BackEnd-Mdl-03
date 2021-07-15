
-- Criar tabela
CREATE TABLE produtos( --Nome da tabela
  id serial, --Campos, seus tipos e possiveis restrições
  nome varchar(60) NOT NULL,
  descricao text,
  preco integer NOT NULL,
  categoria varchar(20) NOT NULL,
  estoque integer NOT NULL,
  ativo boolean DEFAULT TRUE,
  data_cadastro timestamptz DEFAULT NOW() 
);
-- Excluir tabela caso ela exista
DROP TABLE IF EXISTS produtos;

--Inserir registro
INSERT INTO produtos --nome da tabela
(nome, preco, categoria, estoque) -- campos
VALUES('camisa pollo', 5400, 'camisa', 8); -- Seus respectivos valores

INSERT INTO produtos
(nome, preco, categoria, estoque)
VALUES('camisa manga longa', 6000, 'camisa', 12);

INSERT INTO produtos
(nome, preco, categoria, estoque)
VALUES('camiseta', 4400, 'camisa', 5);

INSERT INTO produtos
(nome, preco, categoria, estoque)
VALUES('bermuda jeans', 6500, 'bermuda', 7);

INSERT INTO produtos 
(nome, descricao, preco, categoria, estoque)
VALUES('Bermuda Jeans', NULL, 8000, 'Bermuda', 20);

--Alteração na tabela
ALTER TABLE produtos --Nome da tabela
ALTER COLUMN nome -- Selecionando coluna 
SET DEFAULT NOW(); -- Alterando suas restrições

ALTER TABLE produtos --Nome da tabela
DROP COLUMN descricao; -- Excluindo a coluna descrição com o Drop

ALTER TABLE produtos --Nome da tabela
ADD COLUMN descricao text; -- Adicionando a coluna descrição com o Drop

ALTER TABLE produtos --Nome da tabela
ADD CONSTRAINT nomeproduto UNIQUE (nome); -- Adicionando à coluna 'nome' uma restição UNIQUE de nome 'nomeproduto'. A restrição UNIQUE só funciona caso tenha apenas um do mesmo tipo antes da restrição.

ALTER TABLE produtos --Nome da tabela
DROP CONSTRAINT nomeproduto; -- excluindo  restição UNIQUE

ALTER TABLE produtos --Nome da tabela
RENAME COLUMN preco TO valor;-- Renomeando a coluna preco para valor

--ATUALIZACÕES NA TABELA (IMPORTANTE!!)
UPDATE produtos SET nome = 'Short Jeans' WHERE id = 2; -- Atualização settando na coluna 'nome' o novo valor 'Short Jeans' onde o campo 'id' for = 2 

UPDATE produtos SET ativo = true WHERE ativo IS NULL; -- Atualização settando na coluna 'ativo' o novo valor true onde o campo 'ativo' for = NULL
UPDATE produtos SET descricao = ' ' WHERE descricao IS NULL; -- Atualização settando na coluna 'descricao' o novo valor ' ' onde o campo 'descricao' for = NULL

