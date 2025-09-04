USE produto_felipe

-- Uso do CASE com WHEN e a cláusula ELSE
SELECT nomeProduto, precoProduto,
    CASE nomeProduto
        WHEN 'margarina' THEN CAST(precoProduto*0.9 AS varchar(20))
        WHEN 'vinagre' THEN CAST(precoProduto*0.8 AS varchar(20))
        WHEN 'vinho tinto' THEN CAST(precoProduto*0.7 AS varchar(20))
        ELSE 'Sem desconto disponível'
    END AS produtosComDesconto
FROM produto;

-- Uso do CASE com WHEN e sem a cláusula ELSE
SELECT nomeProduto, precoProduto,
    CASE nomeProduto
        WHEN 'margarina' THEN (precoProduto)*0.9
        WHEN 'vinagre' THEN (precoProduto)*0.8
        WHEN 'vinho tinto' THEN (precoProduto)*0.7
    END AS produtosComDesconto
FROM produto;

-- Usando o CASE como expressão de pesquisa
SELECT nomeProduto, precoProduto,
    CASE
        WHEN precoProduto <=5.0 THEN (precoProduto)*0.6
        WHEN precoProduto <=10.0 THEN (precoProduto)*0.7
        ELSE (precoProduto)*0.8
    END AS precoComDesconto
FROM produto;

-- Usando uma expressão CASE com múltiplas expressões
SELECT nomeProduto, quantidadeProduto,
    CASE
        WHEN quantidadeProduto <= 100 THEN 'Reposição'
        WHEN quantidadeProduto <= 150 THEN 'Estoque baixo'
        WHEN quantidadeProduto <= 200 THEN 'Estoque médio'
        ELSE 'Estoque alto'
    END AS estoque
FROM produto;

-- Usando uma expressão CASE dentro de outra CASE: Cases aninhadas
SELECT nomeProduto, precoProduto, quantidadeProduto,
    CASE
        WHEN precoProduto <= 10.0 and precoProduto >= 5 THEN
            CASE
                WHEN quantidadeProduto > 100 THEN (precoProduto)*0.6
                ELSE (precoProduto)*0.9
            END
        ELSE precoProduto
    END AS novoPreco
FROM produto;

-- Usando uma expressão CASE com SQL GROUP BY
SELECT
    CASE
        WHEN quantidadeProduto <= 100 THEN 'Estoque baixo'
        WHEN quantidadeProduto <= 150 THEN 'Estoque médio'
        ELSE 'Estoque alto'
    END AS nivelEstoque,
    Min(quantidadeProduto) as menorQuantidade,
    Max(quantidadeProduto) as maiorQuantidade
    FROM produto
    GROUP BY
    CASE
        WHEN quantidadeProduto <= 100 THEN 'Estoque baixo'
        WHEN quantidadeProduto <= 150 THEN 'Estoque médio'
    ELSE 'Estoque alto'
END;
