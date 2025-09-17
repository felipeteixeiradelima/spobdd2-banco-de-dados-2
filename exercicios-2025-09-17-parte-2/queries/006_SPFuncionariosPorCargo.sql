USE db_consultoria_felipe
GO

CREATE OR ALTER PROCEDURE sp_consulta_dados_cargo (@idcargo INT) AS
BEGIN
    SELECT *
    FROM tb_funcionario
    WHERE idcargo = @idcargo
END
GO

EXEC sp_consulta_dados_cargo 1
