USE bd_vendas_felipe
GO

CREATE OR ALTER PROCEDURE sp_media_produtos AS
BEGIN
    SELECT AVG(quantidade_estoque)
    AS 'Média Qtd Produtos em Estoque'
    FROM tb_produto
END
GO

EXEC sp_media_produtos
GO
