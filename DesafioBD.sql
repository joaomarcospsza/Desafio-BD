DROP DATABASE IF EXISTS aula_bd;
CREATE DATABASE aula_bd;
USE aula_bd;

CREATE TABLE estado(
id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL UNIQUE,
uf CHAR(2) NOT NULL UNIQUE
);

CREATE TABLE cidade(
id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL UNIQUE,
estado_id INT NOT NULL,
FOREIGN key(estado_id) REFERENCES estado(id)
);

CREATE TABLE fazenda (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL UNIQUE,
rua VARCHAR(250) NOT NULL UNIQUE,
complemento VARCHAR(100) NOT NULL UNIQUE,
hectares DOUBLE NOT NULL UNIQUE,
cep INT(7) NOT NULL UNIQUE,
cidade_id INT NOT NULL,
FOREIGN KEY(cidade_id) REFERENCES cidade(id)
);

CREATE TABLE pessoa (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL UNIQUE,
cpf INT(11) NOT NULL UNIQUE,
data_nascimento DATE NOT NULL UNIQUE,
endereco VARCHAR(250) NOT NULL UNIQUE,
fazenda_id INT NOT NULL,
cidade_id INT NOT NULL,
FOREIGN KEY(fazenda_id) REFERENCES fazenda(id),
FOREIGN KEY(cidade_id) REFERENCES cidade(id)
);

CREATE TABLE animal (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
marcacao VARCHAR(5) NOT NULL UNIQUE,
brinco_identificacao INT(8) NOT NULL UNIQUE,
data_nascimento DATE NOT NULL UNIQUE,
fazenda_id INT NOT NULL,
FOREIGN KEY(fazenda_id) REFERENCES fazenda(id)
);

/* INSERTS TABELA ESTADO */
INSERT INTO estado() VALUE ();
SELECT * FROM estado;

/* INSERTS TABELA CIDADE */
INSERT INTO estado() VALUE ();
SELECT * FROM estado;

/* INSERTS TABELA FAZENDA */
INSERT INTO fazenda(nome, rua, complemento, hectares, cep, cidade) VALUE ('Fazenda Santa Matilda', 'Avenida João Alexandre', 'Primeira porteira a esquerda da arvore grande', '78', '52669', '1');
INSERT INTO fazenda(nome, rua, complemento, hectares, cep, cidade) VALUE ('Fazenda Roça', 'Avenida Tome Souza', 'Perto da fabrica de canudo', '120', '98654', '2');
INSERT INTO fazenda(nome, rua, complemento, hectares, cep, cidade) VALUE ('Fazenda Constantinople', 'Rua Cobalto', 'Proximo ao mercado santana', '250', '32148', '3');
SELECT nome, rua, complemento, hectares, cep, cidade FROM fazenda;

/* INSERTS TABELA PESSOA */
INSERT INTO pessoa(nome, cpf, data_nascimento, endereco, fazenda_id) VALUE ('João Marcos', '859654987', '1999-04-06', 'Rua Tome Souza', '1');
INSERT INTO pessoa(nome, cpf, data_nascimento, endereco, fazenda_id) VALUE ('Marcos', '589674589', '1999-05-04', 'Rua Janta', '2');
INSERT INTO pessoa(nome, cpf, data_nascimento, endereco, fazenda_id) VALUE ('Souza Rubinho', '896214589', '1999-09-22', 'Avenida Alagoinha', '3');
SELECT nome, cpf, data_nascimento, endereco, fazenda_id FROM pessoa;

/* INSERTS TABELA ANIMAL */
INSERT INTO animal(marcacao, brinco_identificacao, data_nascimento, fazenda_id) VALUE ('STM', '8598', '1980-10-06', '1');
INSERT INTO animal(marcacao, brinco_identificacao, data_nascimento, fazenda_id) VALUE ('MTS', '5894', '1980-09-20', '2');
INSERT INTO animal(marcacao, brinco_identificacao, data_nascimento, fazenda_id) VALUE ('TSM', '9658', '1980-08-10', '3');
SELECT marcacao, brinco_identificacao, data_nascimento, fazenda_id FROM animal;
