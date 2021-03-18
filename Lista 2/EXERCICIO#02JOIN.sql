create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_pizza (
id int auto_increment,
tipo varchar (10),
tamanho varchar (10),
primary key (id) 
);
select * from tb_pizza;

insert into tb_pizza (tipo, tamanho) values ("Salgada", "Grande");
insert into tb_pizza (tipo, tamanho) values ("Doce", "Grande");
insert into tb_pizza (tipo, tamanho) values ("Salgada", "Pequena");
insert into tb_pizza (tipo, tamanho) values ("Doce", "Pequena");
insert into tb_pizza (tipo, tamanho) values ("Doce", "Esfiha");

create table tb_categoria(
id int auto_increment,
sabor varchar (10),
preco int,
tipo_id int,
primary key (id), 
foreign key (tipo_id) references tb_pizza (id)
);
select * from tb_categoria;
insert into tb_categoria (sabor, preco, tipo_id) values ("Marguerita", 30, 1);
insert into tb_categoria (sabor, preco, tipo_id) values ("Portuguesa", 40, 2);
insert into tb_categoria (sabor, preco, tipo_id) values ("Calabresa", 20, 2);
insert into tb_categoria (sabor, preco, tipo_id) values ("Brigradeiro", 50, 4);
insert into tb_categoria (sabor, preco, tipo_id) values ("Banana", 30, 3);
insert into tb_categoria (sabor, preco, tipo_id) values ("Brocolis", 40, 1);
insert into tb_categoria (sabor, preco, tipo_id) values ("Palmito", 60, 1);
insert into tb_categoria (sabor, preco, tipo_id) values ("Mussarela", 30, 1);

update tb_pizza set tipo = "salgado" where id = 5;
select tb_pizza.tipo,tb_pizza.tamanho,tb_categoria.sabor from tb_pizza 
inner join tb_categoria on tb_pizza.id = tb_categoria.tipo_id;

select * from tb_categoria where preco> 45;
select * from tb_categoria where preco> 29 and preco<60;
select * from tb_categoria where sabor like "%c%"