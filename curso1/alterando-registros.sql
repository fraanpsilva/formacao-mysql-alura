
USE db_sucos;

-- inserindo registros com erros
INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
VALUES('544931', 'Frescor do Verão', 'PET', '350 ml','Limão', 3.20);

INSERT INTO tb_produto(codigo_produto, nome_produto, embalagem, tamanho, sabor, preco_de_lista)
 VALUES('1078680', 'Frescor do Verão ', 'Lata', '470 ml','Manga', 5.18);

-- alterando registros da tb_produto
UPDATE tb_produto SET embalagem = 'Lata', preco_de_lista = 2.46 WHERE codigo_produto = '544931';
UPDATE tb_produto SET embalagem = 'Garrafa' WHERE codigo_produto = '1078680'; 


-- alterando registros da tb_vendedores
UPDATE tb_vendedores SET percentual_comissao = 0.11 WHERE matricula = '00236';
UPDATE tb_vendedores SET nome = 'José Geraldo da Fonseca' WHERE matricula = '00233';


-- excluindo um registro
DELETE FROM tb_produto WHERE codigo_produto = 1078680;
DELETE FROM tb_vendedores WHERE matricula = '00235';
DELETE FROM tb_vendedores WHERE matricula = '00236';





