USE db_consultoria_felipe

SELECT nomefunc, salariofunc,
CASE
	WHEN salariofunc < 4000 THEN 'salario reajustado'
    WHEN salariofunc < 6000 THEN 'salario não reajustado'
END AS StatusReajuste
FROM tb_funcionario
ORDER BY salariofunc ASC
