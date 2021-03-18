create database db_colegio;

use db_colegio;
create table tb_colegio (
id int auto_increment,
aluno varchar (10) not null,
idade int not null,
nota int not null, 
curso varchar (10),

primary key (id)
);
select * from tb_colegio;
insert into tb_colegio (aluno, idade, nota, curso) values ("Maria", 12, 8, "portugues");
insert into tb_colegio (aluno, idade, nota, curso) values ("Joao", 12, 10, "matematica");
insert into tb_colegio (aluno, idade, nota, curso) values ("Ciclano", 12, 8, "ciencias");
insert into tb_colegio (aluno, idade, nota, curso) values ("Beltrano", 12, 9, "geografia");
insert into tb_colegio (aluno, idade, nota, curso) values ("Fulana", 12, 3, "historia");
insert into tb_colegio (aluno, idade, nota, curso) values ("Lucas", 12, 6, "artes");
insert into tb_colegio (aluno, idade, nota, curso) values ("Joaquina", 12, 4, "geometria");
insert into tb_colegio (aluno, idade, nota, curso) values ("Merlinda", 12, 5, "fisica");
select * from tb_colegio where nota> 7;
select * from tb_colegio where nota< 7;
update tb_colegio set nota = 8 where id = 11;
update tb_colegio set aluno = "vitoria" where id = 7;