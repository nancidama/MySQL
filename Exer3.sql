create database db_exer3; 
use db_exer3; 

create table tb_escolaAdventista(
id bigint auto_increment, 
nome varchar(150) not null, 
idade int, 
periodo varchar(20) not null,
nota decimal (3,2) not null, 
primary key(id)
);

INSERT INTO tb_escolaAdventista(nome,idade,periodo,nota) values ("Maria Ceci", 14, "tarde", 6.5);
INSERT INTO tb_escolaAdventista(nome,idade,periodo,nota) values ("Liz Aparecida", 17, "noturmo", 8.5);
INSERT INTO tb_escolaAdventista(nome,idade,periodo,nota) values ("Mauricio Vitor", 15, "manha", 3.0);
INSERT INTO tb_escolaAdventista(nome,idade,periodo,nota) values ("Mercia Maria", 11, "manha", 9.5);

select*from tb_escolaAdventista where nota >7;
select*from tb_escolaAdventista where nota <7;

update tb_escolaAdventista set nota = 8.00 where id=3;