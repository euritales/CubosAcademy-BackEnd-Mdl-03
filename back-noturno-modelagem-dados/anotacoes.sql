

SELECT * 
FROM agenda
left join usuarios ON usuarios.id = agenda.id 
-- WHERE usuarios.situacao = true;


SELECT agenda.id, categoria, medicamento , nome  -- Ele irá apresentar o id da tabela agenda, categoria e medicamento da tabela farmacia e nome da tabela usuario
FROM agenda
right join usuarios ON agenda.id = usuarios.id 
left join farmacia ON agenda.id = farmacia.id;



SELECT agenda.id AS "id-agenda", 
categoria AS "categoria-farmacia",
medicamento AS "medicamento-farmacia",
nome AS "nome-usuario"
FROM agenda
right join usuarios ON agenda.id = usuarios.id 
left join f
---------------------------------------



ALTER TABLE agenda 
ALTER COLUMN cliente TYPE varchar(100);


SELECT agenda.id AS "id-agenda", 
categoria AS "categoria-farmacia",
medicamento AS "medicamento-farmacia",
nome AS "nome-usuario"
FROM agenda
right join usuarios ON agenda.id = usuarios.id 
left join farmacia ON agenda.id = farmacia.id;


SELECT * FROM farmacia
left JOIN agenda ON farmacia.id = agenda.id	;

---------------------------------------




-- CRIAR TABELAS: USUARIOS, POSTAGENS, E COMENARIOS


CREATE TABLE usuarios ( --CRIAÇÇAO DE TABELA
  username varchar(18) NOT NULL PRIMARY KEY,
  nome text NOT NULL,
  data_nascimento date
);

CREATE TABLE postagens(--CRIAÇÇAO DE TABELA
  id uuid NOT NULL PRIMARY KEY,
  data_criacao timestamp NOT NULL,
  conteudo text NOT NULL,
  autor varchar(18) NOT NULL references usuarios(username)
);

CREATE TABLE comentarios(--CRIAÇÇAO DE TABELA
  id uuid NOT NULL PRIMARY KEY,
  data_criacao timestamp NOT NULL,
  data_edicao timestamp NOT NULL,
  conteudo text NOT NULL,
  autor varchar(18) NOT NULL references usuarios(username),
  id_postagem uuid NOT NULL references postagens(id)
);



INSERT INTO usuarios VALUES( ----POVOANDO TABELA USUARIOS
  '@guilherme',
  'guilherme',
  NULL
);

INSERT INTO usuarios VALUES(----POVOANDO TABELA USUARIOS
  '@guido',
  'Guido',
  '1997-05-13'
);

INSERT INTO usuarios VALUES(----POVOANDO TABELA USUARIOS
  '@dani_boy',
  'Daniel',
  NULL
);

INSERT INTO comentarios VALUES(----POVOANDO TABELA COMENTARIOS, E FAZENDO CONEXAO COM A TABELA POSTAGENS
  '609f2082-a4d7-41eb-b30c-53f270a8da7f',
  NOW(),
  '28-07-2021',
  'Ensoraradissimo! kk',
  '@guido',
  '8d5e762a-0ad4-476c-a042-0739a42f2771'  
);

INSERT INTO comentarios VALUES(----POVOANDO TABELA COMENTARIOS, E FAZENDO CONEXAO COM A TABELA POSTAGENS
  '033d5be0-e2c8-4766-88af-bfd16f146bd8',
  NOW(),
  '28-07-2021',
  'Que ensolarado o que... móh frio aqui em Sp',
  '@dani_boy',
  '8d5e762a-0ad4-476c-a042-0739a42f2771'    
);

INSERT INTO postagens VALUES(----POVOANDO A TABELA POSTAGENS
  '8d5e762a-0ad4-476c-a042-0739a42f2771',
  NOW(),
  'Crima ensorarado!',
  '@guilherme'
);