USE db_sucos;


-- CONSULTANDO DADOS
-- as consultas não precisam ser na mesma ordem das colunas da table.
-- consultando todos os dados da table
SELECT * FROM tb_cliente;

-- consulta de dados mencionando os campos que deseja
SELECT cpf, nome, limite_credito  FROM tb_cliente;
SELECT matricula, nome FROM tb_vendedores;

-- consultando dados limitando o números de registros na saída
SELECT cpf, nome, limite_credito  FROM tb_cliente LIMIT 5;

-- consultando dados dando outro nome (alias) ao campo
SELECT cpf AS cpf_cliente, nome AS nome_cliente FROM tb_cliente;


-- FILTRANDO REGISTRO
-- Where
SELECT * FROM tb_produto WHERE codigo_produto = '544931';
SELECT * FROM tb_cliente WHERE cidade = 'Rio de Janeiro';
SELECT * FROM tb_vendedores WHERE nome = 'Claudia Morais';

-- <, <=, >, >=
SELECT * FROM tb_cliente WHERE idade < 20;
SELECT * FROM tb_produto WHERE preco_de_lista < 7.0;
SELECT * FROM tb_cliente WHERE idade > 20;
SELECT * FROM tb_produto WHERE preco_de_lista > 7.0;
SELECT * FROM tb_cliente WHERE idade >= 22;
SELECT * FROM tb_produto WHERE preco_de_lista >= 10.0;
SELECT * FROM tb_cliente WHERE idade <= 25;
SELECT * FROM tb_produto WHERE preco_de_lista <= 7.0;
SELECT * FROM tb_vendedores WHERE percentual_comissao > 0.10;
-- <> (simbolo de diferente)
SELECT * FROM tb_cliente WHERE idade <> 20;
SELECT * FROM tb_produto WHERE preco_de_lista <> 7.0;

-- com string o mysql segue uma ordem (ordem alfabética)
SELECT * FROM tb_cliente WHERE nome < 'Fernando Cavalcante';
SELECT * FROM tb_produto WHERE nome_produto < 'Videira do Campo';

-- valores com ponto flutuante fica muito dificil usar o (=, <=, >=, <>), fica melhor usar o maior e menor que (< >)
-- podemos usar o comando between
SELECT * FROM tb_produto WHERE preco_de_lista BETWEEN 16.00 AND 16.09;

-- FILTRANDO DATAS - pode usar tbm <= e >= (utiliza o calendários gregoriano)
SELECT * FROM tb_cliente WHERE data_nascimento = '1995-01-13';
SELECT * FROM tb_cliente WHERE data_nascimento > '1995-01-13'; -- quem nasceu depois da data
SELECT * FROM tb_cliente WHERE data_nascimento < '1995-01-13'; -- quem nasceu antes da data
SELECT * FROM tb_cliente WHERE data_nascimento <> '1995-01-13'; -- quem nasceu em uma data diferente dessa

-- existem funções para consultar partes da data - ex.:
SELECT * FROM tb_cliente WHERE YEAR(data_nascimento) = 1995; -- o resultado da função é um número inteiro, por isso não usamos aspas
SELECT * FROM tb_cliente WHERE MONTH(data_nascimento) = 10;
SELECT * FROM tb_cliente WHERE DAY(data_nascimento) = 12;
SELECT * FROM tb_vendedores WHERE YEAR(data_admissao) >= 2016;

-- FILTROS COMPOSTOS (AND, OR
SELECT * FROM tb_produto WHERE preco_de_lista >= 16.001 AND preco_de_lista <= 17.009;
SELECT * FROM tb_cliente WHERE idade >= 18 AND idade <=22;
SELECT * FROM tb_cliente WHERE cidade = 'Rio de Janeiro' OR bairro = 'Jardins';
SELECT * FROM tb_cliente WHERE (idade >= 18 AND idade <=22 AND sexo = 'M') OR (cidade = 'Rio de Janeiro' OR bairro = 'Jardins');

SELECT * FROM tb_vendedores WHERE YEAR(data_admissao) < 2016 AND de_ferias = 1;


