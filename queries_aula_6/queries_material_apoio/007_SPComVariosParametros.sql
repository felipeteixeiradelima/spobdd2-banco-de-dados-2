USE bd_vendas_felipe
GO

CREATE PROCEDURE sp_procedure_varios_parametros(@pk_cliente int, @nome
varchar(255)) AS
    BEGIN
        UPDATE tb_cliente SET nome = @nome WHERE pk_cliente = @pk_cliente
    END
GO

EXEC sp_procedure_varios_parametros 1,'pedro paulo pereira'
GO

DROP PROCEDURE sp_procedure_varios_parametros
GO

SELECT nome, cpf, pk_cliente
FROM tb_cliente
WHERE nome = 'pedro paulo pereira'
