/*SOMA DAS VENDAS POR TRIMESTRE PARA OS VENDEDORES*/
/*PROJECAO*/
SELECT NOME,
	   SEXO,
	   JANEIRO,
	   FEVEREIRO,
	   MARCO,
	   (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL VENDAS",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA VENDAS"
FROM VENDEDORES
GROUP BY SEXO;

SELECT NOME,
	   SEXO,
	   SUM(JANEIRO) AS "TOTAL JANEIRO"
FROM VENDEDORES;