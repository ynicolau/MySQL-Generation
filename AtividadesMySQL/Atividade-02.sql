/* Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE DB_SERVICO_EC;

USE DB_SERVICO_EC;

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
NOME CHAR(255),
MARCA CHAR(255),
QUANTIDADE BIGINT,
PREÇO DOUBLE,
PRIMARY KEY (ID)
);

INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("MICROONDAS","CONSUL","40","499.00");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("SECADOR DE CABELO","PHILIPS","101","279.90");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("TV29","SAMSUNG","70","4900.00");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("LAVADORA","SAMSUNG","23","5490.00");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("AIRFRYER","MONDIAL","67","331.55");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("CHAPINHA","POLISHOP","94","284.90");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("PANELA ELÉTRICA","OSTER","33","146.72");
INSERT INTO TB_PRODUTOS(NOME,MARCA,QUANTIDADE,PREÇO) VALUES("ASPIRADOR DE PÓ","ELECTROLUX","17","239.00");

SELECT * FROM TB_PRODUTOS WHERE PREÇO > 500;

SELECT * FROM TB_PRODUTOS WHERE PREÇO < 500;

UPDATE TB_PRODUTOS SET  MARCA = "PHILCO" WHERE id = 3 ; 

SELECT * FROM TB_PRODUTOS;

