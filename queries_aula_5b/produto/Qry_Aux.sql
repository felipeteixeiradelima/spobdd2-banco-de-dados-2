-- Deleta DB
USE master

ALTER DATABASE produto_felipe SET single_user WITH ROLLBACK IMMEDIATE

DROP DATABASE IF EXISTS produto_felipe

USE master