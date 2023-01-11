USE db_sucos;

-- criando uma nova coluna na tabela
ALTER TABLE tb_cliente ADD COLUMN (data_nascimento DATE); 
ALTER TABLE tb_vendedores ADD COLUMN (data_admissao DATE, de_ferias BIT(1));

-- inserindo registro do tipo DATE e tipo BIT
INSERT INTO tb_cliente(cpf, nome, endereco01, endereco02, bairro, cidade, estado, cep, idade, sexo, limite_credito, volume_compra, primeira_compra, data_nascimento)
VALUES('12345678910', 'João da Silva', 'Rua projetada A nº 10', '', 'Vila Romã', 'Caratinga', 'Amazonas', '222222', 32, 'M', 10000.00, 2000.00, 0, '1989-10-05' );

INSERT INTO tb_vendedores(matricula, nome, percentual_comissao, data_admissao, de_ferias)
VALUES('00235', 'Márcio Almeida Silva', 0.08, '2014-08-15', 0);
INSERT INTO tb_vendedores(matricula, nome, percentual_comissao, data_admissao, de_ferias)
VALUES('00237', 'Roberta Martins', 0.11, '2017-03-18', 1);
INSERT INTO tb_vendedores(matricula, nome, percentual_comissao, data_admissao, de_ferias)
VALUES('00238', 'Péricles Alves', 0.11, '2016-08-21', 0 );
INSERT INTO tb_vendedores(matricula, nome, percentual_comissao, data_admissao, de_ferias)
VALUES('00236', 'Cláudia Morais', 0.08, '2013-09-17', 1 );



SELECT * FROM tb_cliente;
SELECT * FROM tb_vendedores;
















