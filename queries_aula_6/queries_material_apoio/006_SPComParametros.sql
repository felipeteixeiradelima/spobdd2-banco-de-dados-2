USE bd_vendas_felipe
GO

CREATE PROCEDURE sp_procedure_parametro(@pk_cliente int) AS
    BEGIN
        SELECT * FROM tb_cliente WHERE pk_cliente = @pk_cliente
    END
GO

EXEC sp_procedure_parametro 1
GO

DROP PROCEDURE sp_procedure_parametro
GO
