USE bd_vendas_felipe
GO

CREATE OR ALTER PROCEDURE sp_qtd_vendas_loja (@pk_loja int) AS
BEGIN
    SELECT pk_loja, nome, COUNT(*) AS qtd_vendas
    FROM tb_venda
    JOIN tb_loja ON tb_loja.pk_loja = tb_venda.fk_loja
    WHERE pk_loja = @pk_loja
    GROUP BY pk_loja, nome
END
GO

EXEC sp_qtd_vendas_loja 1
