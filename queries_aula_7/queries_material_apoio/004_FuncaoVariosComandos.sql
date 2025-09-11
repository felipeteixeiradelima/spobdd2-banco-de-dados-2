USE bd_empresa_felipe
GO

CREATE OR ALTER FUNCTION F_Func2 ( )
RETURNS @Func Table ( Nome_Func varchar(100) not null,
Sal_Func decimal(10,2) not null )
AS
BEGIN
    DECLARE @numreg tinyint
    SELECT @numreg = Num_Regiao FROM Usuario WHERE User_name = User
        IF @numreg IS NOT NULL AND @numreg <> 10
            INSERT @Func
            SELECT Nome_Func, Sal_Func
            FROM Funcionario
            WHERE Num_regiao = @numreg
        ELSE IF @numreg = 10
            INSERT @Func
            SELECT Nome_Func, Sal_Func FROM Funcionario
RETURN
END
GO

--Código que executa a função ***
SELECT * FROM dbo.F_Func2()
