CREATE TABLE endereco (
    cep VARCHAR(9) PRIMARY KEY,
    logradouro VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50)
);

CREATE TABLE empresa (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(75),
    cep VARCHAR(9),
    FOREIGN KEY (cep) REFERENCES endereco(cep)
);

CREATE TABLE consultor (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(75),
    num_identidade VARCHAR(10),
    especializacao VARCHAR(30),
);

CREATE TABLE projeto (
    id INT PRIMARY KEY IDENTITY(1,1),
    id_solicitante INT,
    dt_inicio DATE,
    dt_termino DATE,
    valor REAL,
    FOREIGN KEY (id_solicitante) REFERENCES empresa(id)
);

CREATE TABLE consultor_projeto (
    id_consultor INT,
    id_projeto INT,
    funcao VARCHAR(10),
    hrs_trabalhadas INT,
    PRIMARY KEY (id_consultor, id_projeto),
    FOREIGN KEY (id_consultor) REFERENCES consultor(id),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id)
);
