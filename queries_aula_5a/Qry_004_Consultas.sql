USE TEST_felipe

SELECT * FROM TB_TEST;
DECLARE @VALOR int = 3
--É "Menor" que "Algum" dos números desta coluna
SELECT IIF((@VALOR < SOME (SELECT ID_CLIENT FROM TB_TEST)), 'É menor', 'NÃO É menor')
--É "Diferente" de "Algum" dos números desta coluna
SELECT IIF((@VALOR <> SOME (SELECT ID_CLIENT FROM TB_TEST)), 'É diferente', 'É igual')
--É "Menor" que "Qualquer" dos números desta coluna
SELECT IIF((@VALOR < ANY (SELECT ID_CLIENT FROM TB_TEST)), 'É menor', 'NÃO É menor')
--É "Diferente" de "Qualquer" dos números desta coluna
SELECT IIF((@VALOR <> ANY (SELECT ID_CLIENT FROM TB_TEST)), 'É diferente', 'É igual')