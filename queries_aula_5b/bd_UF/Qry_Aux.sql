-- Deleta DB
USE master

ALTER DATABASE bd_UF_felipe SET single_user WITH ROLLBACK IMMEDIATE

DROP DATABASE IF EXISTS bd_UF_felipe

USE master