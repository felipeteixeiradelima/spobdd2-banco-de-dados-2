USE bd_vendas_felipe

CREATE TABLE tb_cliente (
    pk_cliente int PRIMARY KEY IDENTITY(0,1),
    nome varchar(255) NOT NULL,
    cpf varchar(11) NOT NULL
)

CREATE TABLE tb_vendedor (
    pk_vendedor int PRIMARY KEY IDENTITY(0,1),
    nome varchar(255) NOT NULL
)

CREATE TABLE tb_produto (
    pk_produto int PRIMARY KEY IDENTITY(0,1),
    nome varchar(255) NOT NULL,
    quantidade_estoque int NOT NULL
)

CREATE TABLE tb_loja (
    pk_loja int PRIMARY KEY IDENTITY(0,1),
    nome varchar(255) NOT NULL,
    cnpj varchar(14) NOT NULL
)

CREATE TABLE tb_venda (
    pk_venda int PRIMARY KEY IDENTITY(0,1),
    percentual_desconto float,
    data_venda datetime NOT NULL,
    fk_loja int REFERENCES tb_loja(pk_loja),
    fk_vendedor int REFERENCES tb_vendedor(pk_vendedor),
    fk_cliente int REFERENCES tb_cliente(pk_cliente),
    valor_total float,
)

CREATE TABLE tb_NotaFiscal (
    pk_notafiscal int PRIMARY KEY IDENTITY(0,1),
    fk_loja int NOT NULL,
    fk_venda int
)

CREATE TABLE tb_itens (
    pk_item int PRIMARY KEY IDENTITY(0,1),
    fk_venda int,
    fk_produto int
)
