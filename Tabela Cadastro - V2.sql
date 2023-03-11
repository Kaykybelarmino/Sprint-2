CREATE DATABASE lettuce;
USE lettuce;
DROP TABLE cadastro;

CREATE TABLE cadastro(
idCadastro INT PRIMARY KEY not null auto_increment,
mercado VARCHAR (20) not null,
hortalica CHAR(15) not null constraint chkHortalica check (hortalica in('alface','rucula','alface e rucula')),
cargo CHAR(7) not null constraint chkCargo check(cargo in('gerente')),
nome VARCHAR(45) not null,
email VARCHAR(45) not null,
telefone CHAR(12)  not null,
dtCadastro DATETIME default current_timestamp
);
DESC cadastro;
SELECT * FROM cadastro;
INSERT INTO cadastro(idCadastro, mercado, hortalica, cargo, nome, email, telefone) VALUES
(null, 'Kennedy','alface','gerente','Augusto','kennedy@gmail.com','1198275412');
INSERT INTO cadastro(idCadastro, mercado, hortalica, cargo, nome, email, telefone)  VALUES
(null,'Vila da Folha','rucula','gerente','Jose','vidadafolha@gmail.com','1198766542'),
(null,'Mercado do Doc','alface e rucula','gerente','Doc','docmercado@gmail.com','1196444946'),
(null,'Cool plant','alface e rucula','gerente','Carla','coolplant@gmail.com','1196444946'),
(null,'Arvore da vida','alface','gerente','Marcos','arvoredavida@gmail.com','1194915665'),
(null,'O hortifruti','alface e rucula','gerente','Gerivaldo','ohortifruti@gmail.com','1194915665'),
(null,'bertonili','rucula','gerente','alberto','bertonili@gmail.com','1192675926');
SELECT * FROM cadastro;
UPDATE cadastro SET nome = 'Carlos'
       WHERE idCadastro = 4;
SELECT * FROM cadastro;
DELETE FROM cadastro 
       WHERE idCadastro = 2;

