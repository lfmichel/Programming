/*IFNULL*/
/*COMANDO IFNULL*/

/*QUERY*/
/*PROJECAO*/
SELECT C.NOME AS 'CLIENTE', 
	   IFNULL(C.EMAIL, 'SEM EMAIL') AS 'EMAIL',
	   T.NUMERO AS 'CELULAR'
FROM CLIENTE C

/*JUNCAO*/
/*JUNCAO TABELA TELEFONE*/
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
/*JUNCAO TABELA ENDERECO*/
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

/*SELECAO*/
WHERE TIPO = 'CEL' AND ESTADO = 'RJ';

+---------+----------------+---------+
| NOME    | EMAIL          | NUMERO  |
+---------+----------------+---------+
| JOAO    | JOAO@IG.COM    | 3456789 |
| JOAO    | JOAO@IG.COM    | 2334567 |
| ANTONIO | SEM EMAIL      | 3456789 |
| ANTONIO | SEM EMAIL      | 8768790 |
| CELIA   | JOAO@TERRA.COM | 1345435 |
+---------+----------------+---------+