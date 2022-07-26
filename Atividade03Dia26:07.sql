/*
Atividade 3

Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
Boas Práticas:

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
*/

CREATE DATABASE DB_FARMACIA_BEM_ESTAR;

USE DB_FARMACIA_BEM_ESTAR;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
CLIENTE VARCHAR(255),
CADASTRO VARCHAR(255),
PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
TIPO VARCHAR(255),
MARCA VARCHAR(255),
PRECO DOUBLE,
ESTOQUE INT,
PRIMARY KEY(ID),
CATEGORIAS_ID BIGINT,
FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS(ID)
);

SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PRODUTOS;

INSERT INTO TB_CATEGORIAS(CLIENTE,CADASTRO) VALUES("INGRID","SIM");
INSERT INTO TB_CATEGORIAS(CLIENTE,CADASTRO) VALUES("MAYARA","SIM");
INSERT INTO TB_CATEGORIAS(CLIENTE,CADASTRO) VALUES("YASMIN","NÃO");
INSERT INTO TB_CATEGORIAS(CLIENTE,CADASTRO) VALUES("ANGÉLICA","SIM");
INSERT INTO TB_CATEGORIAS(CLIENTE,CADASTRO) VALUES("MARIA","NÃO");

INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("ANTICONCEPCIONAL","YASMIN",60.00,6,2);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("PROBIÓTICO INFANTIL","COLIDIS",149.80,4,3);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("COLÁGENO","RENOVA",143.90,11,5);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("WHEY","GRASSFED",189.98,20,4);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("ANTIBIÓTICO","ALIVIUM",31.50,7,1);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("ANTIBIÓTICO","DORFLEX",05.90,30,2);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("ANTICONCEPCIONAL","YASMIN",60.00,6,1);
INSERT INTO TB_PRODUTOS(TIPO,MARCA,PRECO,ESTOQUE,CATEGORIAS_ID) VALUES("ABSORVENTE","SEMPRE LIVRE",16.05,20,4);

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50;

SELECT * FROM TB_PRODUTOS WHERE PRECO >= 5.00 AND PRECO <= 60.00;

SELECT * FROM TB_Produtos WHERE marca  LIKE "%C%";


SELECT TB_PRODUTOS.TIPO, TB_PRODUTOS.MARCA, TB_CATEGORIAS.CADASTRO FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_CATEGORIAS.ID = TB_PRODUTOS.CATEGORIAS_ID WHERE TB_CATEGORIAS.CADASTRO  = "SIM";

