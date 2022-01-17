create database db_cursoDaMinhaVida ;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
vagas int not null,
tipo varchar(50) not null,
primary key (id)
);

insert into tb_categoria (vagas, tipo) values (30, "EAD");
insert into tb_categoria (vagas, tipo) values (40,"Semi-presencial");
insert into tb_categoria (vagas, tipo) values (10,"presencial");
insert into tb_categoria (vagas, tipo) values (5,"EAD");
insert into tb_categoria (vagas, tipo) values (5,"presencial");

create table tb_curso(
id bigint auto_increment,
nome varchar (70) not null,
preco decimal(6,2) not null,
curso varchar (60) not null,
período varchar (100) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Amanda",120.60, "JAVA", "MANHÃ", 1);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Gustavo", 160.00 , "ESPANHOL", "TARDE", 2);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("carlo", 60.00 , "ARABE", "NOITE", 3);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Patricia", 160.00 , "ALEMÃO", "NOITE", 3);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Talita", 3.00 , "INGLES", "TARDE",2);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Larissa", 16.00 , "POO", "NOITE", 3);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Pamela", 45.00 , "ECLIPSE", "TARDE", 2);
insert into tb_produto (nome, preco, curso, período, categoria_id) values ("Cristian", 50.00 , "JAPONES", "MANHÃ", 1);

select  *  from tb_curso where preco >  50.00 ;

select  *  from tb_curso where preco BETWEEN 3.00  AND 60.00 ;

select  *  from tb_curso where sabor  like " %j% " ;

select*from tb_curso inner join tb_categoria on  tb_categoria . id  =  tb_curso . categoria_id ;

select *from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso. categoria.id where tb_categoria.id = 3;