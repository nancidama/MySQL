create database db_exer2; 
use db_exer2; 

create table tb_ecommerce(
id bigint auto_increment, 
nome varchar(150) not null, 
qantidade int, 
pagamento varchar(20) not null,
preco decimal (6,2) not null, 
primary key(id)
);

INSERT INTO tb_ecommerce(nome,qantidade,pagamento,preco) values ("secador de cabelo", 2, "debito", 1000.00);
INSERT INTO tb_ecommerce(nome,qantidade,pagamento,preco) values ("prancha de cabelo", 4, "credito", 2400.00);
INSERT INTO tb_ecommerce(nome,qantidade,pagamento,preco) values ("gilette", 1, "credito", 400.00);
INSERT INTO tb_ecommerce(nome,qantidade,pagamento,preco) values ("shampoo", 2, "debito", 200.00);

select*from tb_ecommerce where preco >500.00;
select*from tb_ecommerce where preco <500.00;

update tb_ecommerce set pagamento = "debito" where id = 3;