USE db_consultoria_felipe
GO

CREATE OR ALTER PROCEDURE sp_altera_salario_funcionario (@idfunc INT, @salariofunc REAL) AS
BEGIN
	UPDATE tb_funcionario
    SET salariofunc = @salariofunc
    WHERE idfunc = @idfunc
END
GO

EXEC sp_altera_salario_funcionario 11, 7200.00
GO

SELECT * FROM tb_funcionario
