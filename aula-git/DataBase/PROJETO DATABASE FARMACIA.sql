/*PROJETO DATABASE FARMACIA*/
/*CRIANDO O BANCO DE DADOS*/
CREATE DATABASE FARMACIA;

/*ATIVANDO O BANCO DE DADOS FARMACIA*/
USE FARMACIA;

/*CRIANDO AS TABELAS DO BANCO DE DADOS FARMACIA*/

/*CRIANDO TABELA CLIENTE*/
CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	CPF VARCHAR(15) UNIQUE,
	EMAIL VARCHAR(50) UNIQUE
);

/*CRIANDO A TABELA TELEFONE*/
CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES','CEL','COM'),
	NUMERO VARCHAR(30),
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/*CRIANDO A TABELA ENDERECO*/
CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/*CRIANDO UMA QUERY*/
SELECT C.NOME, C.CPF,
E.ESTADO, E.CIDADE,
T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;