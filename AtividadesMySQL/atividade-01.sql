/*
ATIVIDADE 01

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/

CREATE database db_servico_rh;

use db_servico_rh;


CREATE TABLE tb_colaboradores (
	id bigint auto_increment,
    nome char(255),
    salario double,
    cpf char(255),
    cargo char(255),
    primary key(id)
);


INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Igor", 1200.00, "12345678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Cinthia", 15000.00, "12845678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Daniel", 8000.00, "12445678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Bruna", 9000.00, "11345678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Ingrid", 6000.00, "12395678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Filipe", 5000.00, "12645678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Carlos", 1000.00, "12645678922", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Joana", 1500.00, "12645678922", "dev");

use db_servico_rh;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 12000 WHERE id = 1; 

SELECT * FROM tb_colaboradores;


