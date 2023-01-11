-- criando e usando um banco de dados
CREATE DATABASE db_sucos;
USE db_sucos;

-- apagando um banco de dados
DROP DATABASE db_sucos;

-- criando tabela
CREATE TABLE tb_cliente (
	cpf VARCHAR(11),
	nome VARCHAR(100),
	endereco01 VARCHAR(140),
	endereco02 VARCHAR(150),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(50),
	cep VARCHAR(8),
	idade SMALLINT,
	sexo VARCHAR(1),
	limite_credito FLOAT,
	volume_compra FLOAT,
	primeira_compra BIT(1)
);

CREATE TABLE tb_produto(
	codigo_produto VARCHAR(20),
    nome_produto VARCHAR(150),
    embalagem VARCHAR(50),
    tamanho VARCHAR(50),
    sabor VARCHAR(50),
    preco_de_lista FLOAT
);

-- exercicios
CREATE TABLE tb_vendedores(
	matricula VARCHAR(5),
    nome VARCHAR(100),
    percentual_comissao FLOAT
);

-- apagando tabelas
DROP TABLE tb_vendedores;

-- inserindo dados na tabela de produtos
INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
VALUES ('1040107', 'Light Melancia', 'Lata', '350 ml', 'Melância', 4.56);

INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
VALUES ('1037797', 'Clean', 'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
VALUES ('1000889', 'Sabor da Montanha', 'Garrafa', '700 ml', 'Uva', 6.31);

INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
VALUES ('1004327', 'Videira do campo', 'PET', '1,5 Litros', 'Melância', 19.51);

INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
VALUES ('1088126', 'Linha Citrus', 'PET', '1 Litro', 'Limão', 7.00);

-- inserindo dados na tabela de vendedores
INSERT INTO tb_vendedores(matricula, nome, percentual_comissao)
VALUES('00233', 'João Geraldo da Fonseca', 0.10);

INSERT INTO tb_vendedores(matricula, nome, percentual_comissao)
VALUES('00235', 'Márcio Almeida da Silva', 0.08);

INSERT INTO tb_vendedores(matricula, nome, percentual_comissao)
VALUES('00236', 'Cláudia Moraes', 0.08);










