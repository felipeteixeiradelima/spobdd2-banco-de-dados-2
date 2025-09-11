USE bd_vendas_felipe
GO

CREATE OR ALTER PROCEDURE sp_vendedores AS
BEGIN
    SELECT DISTINCT pk_vendedor, nome
    FROM tb_vendedor
    JOIN tb_venda
    ON tb_venda.fk_vendedor = pk_vendedor
    WHERE nome LIKE '%dr%'
END
GO

EXEC sp_vendedores
