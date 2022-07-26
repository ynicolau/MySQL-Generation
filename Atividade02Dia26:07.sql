/* Atividade 2

Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
Boas Práticas:

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE DB_PIZZARIA_LEGAL;

USE DB_PIZZARIA_LEGAL;


CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
CADASTRO VARCHAR(255),
ENDEREÇO VARCHAR(255),
PRIMARY KEY(ID)
);


CREATE TABLE TB_PIZZAS(
ID BIGINT AUTO_INCREMENT,
SABOR VARCHAR(255),
PRECO DOUBLE,
TAMANHO VARCHAR(255),
REFRIGERANTE VARCHAR(255),
PRIMARY KEY(ID),
CATEGORIAS_ID BIGINT,
FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS(ID)
);

SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PIZZAS;

INSERT INTO TB_CATEGORIAS(CADASTRO,ENDEREÇO) VALUES("SIM","RUA VENEZA");
INSERT INTO TB_CATEGORIAS(CADASTRO,ENDEREÇO) VALUES("NÃO","RUA DAS FLORES");
INSERT INTO TB_CATEGORIAS(CADASTRO,ENDEREÇO) VALUES("SIM","RUA JOSÉ DE OLIVEIRA");
INSERT INTO TB_CATEGORIAS(CADASTRO,ENDEREÇO) VALUES("NÃO","RUA DAS LARANJEIRAS");
INSERT INTO TB_CATEGORIAS(CADASTRO,ENDEREÇO) VALUES("SIM","AVENIDA BRASIL");

INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("CALABRESA",25.00,"BROTO","COCA-COLA",1);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("MUÇARELA",30.00,"GRANDE","GUARANA",3);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("PORTUGUESA",50.00,"GRANDE","SPRITE",2);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("BROCOLIS",32.00,"GRANDE","FANTA",1);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("FRANGO C/CATUPIRY",45.00,"BROTO","COCA-COLA",1);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("CALABERSA",35.00,"GRANDE","FANTA UVA",1);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("NAPOLITANA",38.00,"GRANDE","SUKITA",4);
INSERT INTO TB_PIZZAS(SABOR,PRECO,TAMANHO,REFRIGERANTE,CATEGORIAS_ID) VALUES("MARGUERITA",34.00,"GRANDE","COCA-COLA",1);

SELECT * FROM TB_PIZZAS WHERE PRECO > 45;

SELECT * FROM TB_PIZZAS WHERE PRECO >= 50 AND PRECO <= 100;

SELECT * FROM TB_PIZZAS WHERE SABOR LIKE "%M%";

SELECT TB_PIZZAS.TAMANHO, TB_PIZZAS.SABOR, TB_CATEGORIAS.ENDEREÇO FROM TB_PIZZAS INNER JOIN TB_CATEGORIAS ON TB_CATEGORIAS.ID = TB_PIZZAS.CATEGORIAS_ID AND TB_PIZZAS.TAMANHO LIKE "%GRANDE%";


























