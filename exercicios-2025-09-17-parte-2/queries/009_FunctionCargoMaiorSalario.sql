USE db_consultoria_felipe
GO

CREATE OR ALTER FUNCTION F_cargo_maior_salario ()
RETURNS TABLE
AS
    RETURN (
        SELECT DISTINCT a.NomeCargo, a.valor FROM tb_cargo a
        RIGHT JOIN tb_cargo b ON a.valor = (SELECT MAX(valor) FROM tb_cargo)
    )
GO

SELECT * FROM dbo.F_cargo_maior_salario()
