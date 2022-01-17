create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50) not null,
embalagem boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, embalagem) values ("poupa", false);
insert into tb_categoria (descricao, embalagem) values ("pequena",true);
insert into tb_categoria (descricao, embalagem) values ("brotinho",true);
insert into tb_categoria (descricao, embalagem) values ("grande",false);

create table tb_produto(
id bigint auto_increment,
nome varchar (70) not null,
preco decimal(4,2) not null,
dataentrada varchar (60) not null,
quantidade boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("limão", 12.60, current_date(), 8, 1);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Banana", 16.00 ,current_date(), 10, 5);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Laranja", 15.00,current_date(), 15, 2);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Melancia", 29.00, current_date(), 5, 8);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Melão", 3.00, true, current_date(), 8, 2);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Amora", 53.00, false, current_date(),20, 4);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Ameixa", 60.00, true, current_date(),8, 6);
insert into tb_produto (nome, preco, dataentrada, quantidade, categoria_id) values ("Abacate",34.00, false, current_date(),7, 9);

select  *  from tb_produto where preco >  50.00 ;

select  *  from tb_produto where preco BETWEEN 3.00  AND 60.00 ;

select  *  from tb_produto where sabor  like " %c% " ;

select*from tb_produto inner join tb_categoria on  tb_categoria . id  =  tb_produto . categoria_id ;

select *from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto. categoria.id where tb_categoria.id = 2;