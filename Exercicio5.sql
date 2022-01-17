create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
departamento varchar(50) not null,
embalagem boolean not null,
primary key (id)
);

insert into tb_categoria (departamento, embalagem) values ("sala", false);
insert into tb_categoria (descricao, embalagem) values ("cozinha",true);
insert into tb_categoria (descricao, embalagem) values ("decoração",true);
insert into tb_categoria (descricao, embalagem) values ("azulejos",false);

create table tb_produto(
id bigint auto_increment,
nome varchar (70) not null,
preco decimal(6,2) not null,
marca varchar (60) not null,
material varchar (100) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, marca, material, categoria_id) values ("persiana",120.60, "teka", "camurça", 1);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("maçaneta", 160.00 , "quarto", "aluminio", 5);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("balcão", 60.00 , "cozinha", "madeira", 2);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("porta", 160.00 , "banheiro", "aluminio", 8);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("talher", 3.00 , "decoração", "aluminio",2);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("Lampada", 16.00 , "iluminação", "vidro", 4);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("pia", 45.00 , "banheiro", "ceramica", 6);
insert into tb_produto (nome, preco, marca, material, categoria_id) values ("cuba", 50.00 , "lavabo", "aluminio", 9);

select  *  from tb_produto where preco >  50.00 ;

select  *  from tb_produto where preco BETWEEN 3.00  AND 60.00 ;

select  *  from tb_produto where sabor  like " %c% " ;

select*from tb_produto inner join tb_categoria on  tb_categoria . id  =  tb_produto . categoria_id ;

select *from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto. categoria.id where tb_categoria.id = 4;