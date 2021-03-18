create database dt_rh;

use dt_rh;
create table tb_funcionarios (
id int auto_increment,
nome varchar(10) not null, 
idade int not null,
salario int not null,

primary key (id)
);
select * from tb_funcionarios;
insert into tb_funcionarios (nome, idade, salario) values ("Miram", 20, 2000);
insert into tb_funcionarios (nome, idade, salario) values ("Flora", 25, 1000);
insert into tb_funcionarios (nome, idade, salario) values ("Maria", 30, 3000);
insert into tb_funcionarios (nome, idade, salario) values ("Miguel", 28, 1200);
insert into tb_funcionarios (nome, idade, salario) values ("Julio", 24, 2000);
select * from tb_funcionarios where salario> 2000;
select * from tb_funcionarios where salario< 2000;
update tb_funcionarios set nome = "Julia" where id = 5;
