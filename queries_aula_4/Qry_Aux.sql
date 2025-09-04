USE master

ALTER DATABASE bd_vendas_felipe SET single_user WITH ROLLBACK IMMEDIATE

DROP DATABASE IF EXISTS bd_vendas_felipe
