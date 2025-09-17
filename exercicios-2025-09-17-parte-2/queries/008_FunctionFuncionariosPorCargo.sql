USE db_consultoria_felipe
GO

CREATE OR ALTER FUNCTION F_consulta_funcionarios_cargo (@idcargo INT)
RETURNS INT
AS
BEGIN
	RETURN (SELECT COUNT(*)
            FROM tb_funcionario
            WHERE idcargo = @idcargo)
END
GO

DECLARE @idcargo INT = 1

SELECT @idcargo AS IdCargo, dbo.F_consulta_funcionarios_cargo(@idcargo) AS QtdFunc
