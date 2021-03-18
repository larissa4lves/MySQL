create database db_ecommerce;

use db_ecommerce;
create table tb_estoque (
id int auto_increment,
produto varchar(10) not null,
preco int not null,
cor varchar(10),

primary key (id)
);
select * from tb_estoque;
insert into tb_estoque (produto, preco, cor) values ("celular", 1200, "azul"); 
insert into tb_estoque (produto, preco, cor) values ("tablet", 1800, "branco"); 
insert into tb_estoque (produto, preco, cor) values ("fone", 30, "preto"); 
insert into tb_estoque (produto, preco, cor) values ("carregador", 1200, "branco"); 
insert into tb_estoque (produto, preco, cor) values ("notbook", 4000, "rosa"); 
select * from tb_estoque where preco> 500;
select * from tb_estoque where preco< 500;
update tb_estoque set produto = "ipod" where id = 3;