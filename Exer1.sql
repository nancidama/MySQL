create database db_rh; 
use db_rh; 

create table tb_funcionaries(
id bigint auto_increment, 
nome varchar(150) not null, 
idade int, 
matricula varchar(10) not null,
salario decimal (6,2) not null, 
primary key(id)
);

INSERT INTO tb_funcionaries(nome,idade,matricula,salario) values ("Maria do Carmo", 26, 123456, 1000.00);
INSERT INTO tb_funcionaries(nome,idade,matricula,salario) values ("João de Sá", 38, 789456, 4000.00);
INSERT INTO tb_funcionaries(nome,idade,matricula,salario) values ("Cristina Silva", 39, 125478, 3000.00);
INSERT INTO tb_funcionaries(nome,idade,matricula,salario) values ("Maria Cecilia", 35, 547896, 3400.00);
INSERT INTO tb_funcionaries(nome,idade,matricula,salario) values ("Odair Marinho", 41, 126789, 2000.00);

select*from tb_funcionaries where salario >2000.00;
select*from tb_funcionaries where salario <2000.00;

update tb_funcionaries set matricula = 546231 where id = 2;

select*from tb_funcionaries;

delete from tb_funcionaries where id = 6;
delete from tb_funcionaries where id = 7;
update tb_funcionaries set salario = 1000.00 where id = 1;


