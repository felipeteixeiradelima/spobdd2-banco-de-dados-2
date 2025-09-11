USE bd_vendas_felipe
GO

CREATE OR ALTER PROCEDURE sp_qtd_vendas_produto(@pk_produto int) AS
BEGIN
    SELECT pk_produto, nome, COUNT(*)
    AS 'qtd_vendas'
    FROM tb_itens
    JOIN tb_produto ON tb_itens.fk_produto = tb_produto.pk_produto
    WHERE fk_produto = @pk_produto
    GROUP BY pk_produto, nome
END
GO

EXEC sp_qtd_vendas_produto 1
