USE bd_vendas_felipe
GO

CREATE PROCEDURE sp_procedure_com_variavel AS
    DECLARE @idade int,
    @nome varchar(4)
    BEGIN
        set @idade = 15
        set @nome = 'IFSP'
        print @idade
        print @nome
    END
GO

EXEC sp_procedure_com_variavel
GO

DROP PROCEDURE sp_procedure_com_variavel
GO
