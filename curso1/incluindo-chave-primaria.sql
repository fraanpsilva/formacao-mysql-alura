USE db_sucos;

ALTER TABLE tb_produto ADD PRIMARY KEY (codigo_produto);
ALTER TABLE tb_cliente ADD PRIMARY KEY (cpf);
ALTER TABLE tb_vendedores ADD PRIMARY KEY (matricula);

select * from tb_vendedores;
select * from tb_produto;
select * from tb_cliente;