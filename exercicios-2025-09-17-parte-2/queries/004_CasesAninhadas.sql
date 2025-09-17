USE db_consultoria_felipe

SELECT nomefunc, salariofunc,
CASE
	WHEN salariofunc > 6000 THEN 'Acima de 6k'
    ELSE CASE
    	WHEN salariofunc < 4000 THEN 'abaixo de 4k'
        ELSE 'Entre 4k e 6k'
    END
END AS CategoriaSalario
FROM tb_funcionario
ORDER BY salariofunc ASC
