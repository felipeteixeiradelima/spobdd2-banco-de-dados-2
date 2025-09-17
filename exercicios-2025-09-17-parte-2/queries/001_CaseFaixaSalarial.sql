USE db_consultoria_felipe

SELECT nomefunc, salariofunc,
CASE
	WHEN salariofunc < 4000 THEN 'Salário baixo'
    WHEN salariofunc < 6000 THEN 'Salário Médio'
    ELSE 'Salário alto'
END AS CategoriaSalario
FROM tb_funcionario
ORDER BY salariofunc ASC
