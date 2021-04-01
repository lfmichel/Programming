/*A27 - PROCEDURES*/

/*SEMPRE ALTERAR O DELIMITADOR PARA $*/
/*O DELIMITADOR E IMPORTANTE PARA CRIAR
A PROCEDURE, E DEPOIS DA PROCEDURE CRIADA*
NO BANCO DE DADOS, PODEMOS CHAMAR A PROCEDURE
NORMALMENTE, ALTERANDO PARA O DELIMITADOR PADRAO*/
DELIMITER $

CREATE PROCEDURE NOME()
BEGIN

	ACAO;

END
$

SELECT 10+ 10 AS "CONTA"$

/*CRIANDO PROCEDURE SEM PARAMETROS*/

CREATE PROCEDURE CONTA()
BEGIN
		SELECT 10 + 10 AS "CONTA";
END
$ 

/*CHAMANDO A PROCEDURE*/

CALL CONTA()$

/*RETORNANDO PARA O DELIMITADOR PADRAO*/

DELIMITER ;

CALL CONTA();

/*APAGANDO PROCEDURE*/

DROP PROCEDURE CONTA;

/*PROCEDURES COM PARAMETROS*/

DELIMITER $ /*ALTERAR O DELIMITER*/

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
		SELECT NUMERO1 + NUMERO2 AS "CONTA";
END
$

		/*RETORNAR O DELIMITADOR*/
		DELIMITER ;
		
CALL CONTA(100, 786);

/*------------------------------------------------*/
/*EXERCICIO DE PROCEDURE*/
/*SEM PASSAGEM DE PARAMETROS*/
/*ALTERANDO O DELIMITADOR*/
DELIMITER $

/*CRIANDO A PROCEDURE SEM PASSSAGEM DE PARAMETROS*/
CREATE PROCEDURE SOMA()
BEGIN
		SELECT 10 + 10 AS "CONTA";
END
$

/*RETORNANDO O DELIMITADOR PADRAO*/
DELIMITER ;

/*CHAMANDO A PROCEDURE*/
CALL SOMA();











/*EXERCICIO DE PROCEDURE*/
/*COM PASSAGEM DE PARAMETROS*/
/*ALTERANDO O DELIMITADOR*/
DELIMITER $

/*CRIANDO A PROCEDURE*/
CREATE PROCEDURE SOMA(NUM1 INT, NUM2 INT)
BEGIN
	SELECT NUM1 + NUM2 AS "CONTA";
END
$

/*RETORNANDO O DELIMITADOR*/
DELIMITER ;

/*CHAMANDO A PROCEDURE*/
CALL SOMA(12, 12);
		
/*------------------------------------------------*/