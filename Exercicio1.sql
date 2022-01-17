create database  db_generation_game_online ;

use db_generation_game_online;

create  table tb_classe (
id bigint auto_increment,
nome varchar ( 100 ) not null,
categoria varchar ( 50 ) not null,
primary key (id)
);

INSERT INTO tb_classe (classe, pontoVida) VALUES ( " Alice " , 14 );
INSERT INTO tb_classe (classe, pontoVida) VALUES ( " Gabi" , 10 );
INSERT INTO tb_classe (classe, pontoVida) VALUES ( " Mauro " , 4 );
INSERT INTO tb_classe (classe, pontoVida) VALUES ( " Carlos " , 8 );
INSERT INTO tb_classe (classe, pontoVida) VALUES  ("Maria", 9);

create table  tb_personagem (
id bigint auto_increment,
nome varchar ( 100 ) not null,
genero varchar(50) not null,
podataque bigint not null,
poddefesa bigint not null,
classe_id bigint ,
primary key (id),
FOREIGN KEY (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( "Alice", "fem", 5000 , 8 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( "Amado" , "masc" , 3000 , 10000 , 1 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( "Feliz" , "fem", 1000 , 2000 , 5 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( "Saulo" , "masc", 1400 , 2000 , 4 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( "Antonia " , "trans" , 1500 , 1000 , 5 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( "Maria " , "trans" , 2000 , 5000 , 3 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values ( " Sara" , 3000 , 2000 , 3500 , 2 ) ;
INSERT INTO tb_personagem(nome, genero,podataque, poddefesa,classe_id) values (" Felipe " , 8000 , 4000 , 15000 , 1 ) ;

select  *  from tb_personagem where podataque >  2000 ;

select  *  from tb_personagem where poddefesa BETWEEN 1000  AND 2000 ;

select  *  from tb_personagem where nome  like " %c% " ;

select*from tb_personagem inner join tb_classe on  tb_classe . id  =  tb_personagem . classe_id ;

select *from tb_personagem LEFT JOIN tb_classe on tb_classe . id  =  tb_personagem . classe_id  where  tb_classe . id  =  3 ;
