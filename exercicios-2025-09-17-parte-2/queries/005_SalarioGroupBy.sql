USE db_consultoria_felipe

SELECT
    CASE
        WHEN salariofunc < 6000 THEN 'Salários Baixos/Médios'
        ELSE 'Salários Altos'
    END AS FaixaSalarial,
    COUNT(*) as TotalFuncionarios,
    SUM(salariofunc) AS SomaSalarios
FROM tb_funcionario
GROUP BY (CASE
              WHEN salariofunc < 6000 THEN 'Salários Baixos/Médios'
              ELSE 'Salários Altos'
          END)
