USE bd_vendas_felipe
GO

CREATE PROCEDURE sp_procedure_if_UM(@pk_cliente int) AS
BEGIN
    IF(@pk_cliente>10)
    BEGIN
        SELECT * FROM tb_cliente WHERE pk_cliente > 10
    END
    ELSE
    BEGIN
        SELECT * FROM tb_cliente WHERE pk_cliente < 10
    END
END
GO

EXEC sp_procedure_if_UM 10
GO

DROP PROCEDURE sp_procedure_if_UM
GO
