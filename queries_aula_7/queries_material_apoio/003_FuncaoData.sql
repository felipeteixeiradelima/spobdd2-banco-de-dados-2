USE bd_empresa_felipe
GO

CREATE OR ALTER FUNCTION F_DataCadastro (@data smallDatetime)
RETURNS TABLE
AS
    RETURN (SELECT * FROM dbo.Funcionario
    WHERE Data_Func = @data)
GO

-- Executando a função:
SELECT * FROM F_DataCadastro('01/01/98')

-- Fazendo JOIN com o resultado da função F_DataCadastro:
SELECT F.*, Regiao.Regiao
FROM F_DataCadastro('01/01/98') AS F, Regiao
WHERE F.Num_Regiao = Regiao.Num_Regiao
