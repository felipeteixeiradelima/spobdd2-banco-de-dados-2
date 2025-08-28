INSERT INTO endereco (cep, logradouro, numero, complemento, bairro, cidade, estado) VALUES
('12345-678', 'Rua das Flores', 100, 'Bloco A', 'Centro', 'São Paulo', 'SP'),
('23456-789', 'Avenida Brasil', 500, NULL, 'Jardins', 'Rio de Janeiro', 'RJ'),
('34567-890', 'Rua dos Pinheiros', 250, 'Sala 301', 'Pinheiros', 'São Paulo', 'SP'),
('45678-901', 'Avenida Paulista', 1000, 'Torre B', 'Bela Vista', 'São Paulo', 'SP');

INSERT INTO empresa (nome, cep) VALUES
('Tech Solutions', '12345-678'),
('Data Innovations', '23456-789'),
('Cloud Systems', '34567-890'),
('Digital Transformations', '45678-901');

INSERT INTO consultor (nome, num_identidade, especializacao) VALUES
('João Silva', '55213456X', 'Banco de Dados'),
('Maria Santos', '12345678Y', 'Análise de Sistemas'),
('Carlos Oliveira', '95729401C', 'Segurança da Informação'),
('Ana Pereira', '71684938H', 'Desenvolvimento Web');

INSERT INTO projeto (id_solicitante, dt_inicio, dt_termino, valor) VALUES
(1, '2024-01-10', '2024-06-30', 15000.00),
(2, '2024-03-15', '2024-08-15', 20000.00),
(3, '2024-05-01', '2025-01-31', 30000.00),
(4, '2024-07-20', '2024-10-20', 80000.00);

INSERT INTO consultor_projeto (id_consultor, id_projeto, funcao, hrs_trabalhadas)
VALUES (1, 1, 'Membro', 120),
(2, 2, 'Membro', 200),
(3, 3, 'Líder', 150),
(4, 4, 'Líder', 100),
(1, 4, 'Membro', 80),
(2, 3, 'Membro', 120),
(3, 1, 'Líder', 90),
(4, 2, 'Líder', 160);
