create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(50) not null,
sabor varchar (50) not null,
primary key (id)
);

insert into tb_categoria (tamanho, sabor) values ("grande", "mussarela");
insert into tb_categoria (tamanho, sabor) values ("pequena","calabresa");
insert into tb_categoria (tamanho, sabor) values ("brotinho","queijo bri");
insert into tb_categoria (tamanho, sabor) values ("grande","salame");
insert into tb_categoria (tamanho, sabor) values ("media","brigadeiro");

select*from tb_categoria

create table tb_pizza(
id bigint auto_increment,
nome varchar (70) not null,
preco decimal(4,2) not null,
sabor varchar (60) not null,
borda_recheada boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Amada", 32.60,"mussarela", true, 1);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Aksa", 45.00 ,"brigadeiro", false, 5);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Lara", 85.00,"doce de leite", false, 3);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Amelia", 29.00, "calabresa", true, 8);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Alexandra", 35.40, true, "portuguesa", 2);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Amanda", 25.00, false, "lombo", 4);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Carla", 60.00, true, "quatro queijos", 6);
insert into tb_pizza (nome, preco, sabor, borda_recheada, categoria_id) values ("Amarela",34.00, false, "frango", 9);

select  *  from tb_pizza where preco >  45.00 ;

select  *  from tb_pizza where preco BETWEEN 29.00  AND 60.00 ;

select  *  from tb_pizza where sabor  like " %c% " ;

select*from tb_pizza inner join tb_categoria on  tb_categoria . id  =  tb_pizza . categoria_id ;

select *from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza. categoria.id where tb_categoria.id = 3;