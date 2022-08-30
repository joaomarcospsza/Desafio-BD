DROP DATABASE IF EXISTS aula_bd;
CREATE DATABASE aula_bd;

USE aula_bd;

CREATE TABLE pessoa (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL UNIQUE,
cpf INT(11) NOT NULL UNIQUE,
data_nascimento DATE NOT NULL UNIQUE,
endereco VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE animal (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
marcacao VARCHAR(5) NOT NULL UNIQUE,
brinco_identificacao INT(8) NOT NULL UNIQUE,
data_nascimento DATE NOT NULL UNIQUE
);

CREATE TABLE fazenda (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL UNIQUE,
rua VARCHAR(250) NOT NULL UNIQUE,
complemento VARCHAR(100) NOT NULL UNIQUE,
hectares DOUBLE NOT NULL UNIQUE,
cep INT(7) NOT NULL UNIQUE
);

/* INSERTS TABELA PESSOA */
INSERT INTO pessoa(nome, cpf, data_nascimento, endereco) VALUE ('João Marcos', '859654987', '1999-04-06', 'Rua Tome Souza');
INSERT INTO pessoa(nome, cpf, data_nascimento, endereco) VALUE ('Marcos', '589674589', '1999-05-04', 'Rua Janta');
INSERT INTO pessoa(nome, cpf, data_nascimento, endereco) VALUE ('Souza Rubinho', '896214589', '1999-09-22', 'Avenida Alagoinha');
SELECT nome, cpf, data_nascimento, endereco FROM pessoa;

/* INSERTS TABELA ANIMAL */
INSERT INTO animal(marcacao, brinco_identificacao, data_nascimento) VALUE ('STM', '8598', '1980-10-06');
INSERT INTO animal(marcacao, brinco_identificacao, data_nascimento) VALUE ('MTS', '5894', '1980-09-20');
INSERT INTO animal(marcacao, brinco_identificacao, data_nascimento) VALUE ('TSM', '9658', '1980-08-10');
SELECT marcacao, brinco_identificacao, data_nascimento FROM animal;

/* INSERTS TABELA FAZENDA */
INSERT INTO fazenda(nome, rua, complemento, hectares, cep) VALUE ('Fazenda Santa Matilda', 'Avenida João Alexandre', 'Primeira porteira a esquerda da arvore grande', '78', '52669');
INSERT INTO fazenda(nome, rua, complemento, hectares, cep) VALUE ('Fazenda Roça', 'Avenida Tome Souza', 'Perto da fabrica de canudo', '120', '98654');
INSERT INTO fazenda(nome, rua, complemento, hectares, cep) VALUE ('Fazenda Constantinople', 'Rua Cobalto', 'Proximo ao mercado santana', '250', '32148');
SELECT nome, rua, complemento, hectares, cep FROM fazenda;
