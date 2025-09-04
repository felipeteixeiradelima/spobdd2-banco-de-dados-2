USE bd_UF_felipe

select * from estado;

SELECT sigla,
    CASE WHEN sigla IN ('PR', 'RS', 'SC') THEN 'Sul'
        WHEN sigla IN ('SP', 'RJ', 'ES', 'MG') THEN 'Sudeste'
        WHEN sigla IN ('MT', 'MS', 'GO') THEN 'Centro-Oeste'
        WHEN sigla IN ('BA','AL','SE','PB','PE','RN','CE','PI','MA') THEN 'Nordeste'
        WHEN sigla IN ('AM', 'RR', 'AP', 'PA', 'TO', 'RO', 'AC') THEN 'Norte'
        ELSE ''
    END AS regiao
FROM estado
ORDER BY sigla;
