CREATE DATABASE bd_empresa_felipe
GO

USE bd_empresa_felipe
GO

CREATE TABLE [Funcionario](
    [Cod_Func] [int] NOT NULL,
    [Nome_Func] [varchar](100) NULL,
    [Sexo_Func] [char](1) NULL,
    [Sal_Func] [float] NULL,
    [Data_Func] [datetime] NULL,
    [Num_Regiao] [int] NULL
)

CREATE TABLE [Regiao](
    [Num_Regiao] [int] NOT NULL,
    [Regiao] [varchar](50) NULL
)

CREATE TABLE [dbo].[Usuario](
    [User_Name] [varchar](50) NULL,
    [Num_Regiao] [int] NULL
)
