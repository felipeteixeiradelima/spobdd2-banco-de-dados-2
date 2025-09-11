USE bd_vendas_felipe;
GO

CREATE PROCEDURE sp_minha_procedure AS
    BEGIN
        SELECT 'HELLO WORLD!'
    END
GO

EXEC sp_minha_procedure
GO

DROP PROCEDURE sp_minha_procedure
GO
