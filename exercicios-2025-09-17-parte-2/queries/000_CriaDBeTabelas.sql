CREATE DATABASE db_consultoria_felipe
GO

USE db_consultoria_felipe
GO

CREATE TABLE tb_cargo (
    IdCargo INT PRIMARY KEY IDENTITY(1,1),
    NomeCargo VARCHAR(50),
    valor DECIMAL(6,2)
)

CREATE TABLE tb_funcionario (
    IdFunc INT,
    IdCargo INT,
    NomeFunc VARCHAR(50),
    SalarioFunc DECIMAL(6,2),
    PRIMARY KEY (IdFunc),
    FOREIGN KEY (IdCargo) REFERENCES tb_cargo(IdCargo)
)

INSERT INTO tb_cargo(NomeCargo, valor) VALUES
('Programador Junior', 3500),
('Web Designer Pleno', 5500),
('Programador Pleno', 7200),
('DBA Junior', 6300),
('Programador Senior', 6100)

INSERT INTO tb_funcionario VALUES
(11, 5, 'Jose da Silva', 6100),
(33, 2, 'Mario Jobbs', 5500),
(44, 3, 'Francisco Brasil', 7200),
(55, 4, 'Maria da Silva', 6300),
(66, 1, 'Carlos de Santos', 3500),
(77, 1, 'Jose Gates', 3500)
