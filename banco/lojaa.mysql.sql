
create database lojaa;


create table produtos(
	id integer auto_increment primary key,
	nome varchar(255),
    preco decimal(10,2)
);


create table categorias(
	id integer auto_increment primary key,
	nome varchar(255)
);




-- alte table -- alterar tabela 
alter table produtos add column descricao text; -- inserir coluna

alter table produtos add column categoria_id integer;

alter table produtos add column usado boolean default false;



-- insert into -- inserir 
insert into produtos (id, nome, preco) values (1, 'carro', 10000);

insert into produtos (id, nome, preco) values (2, 'motocicleta', 7000);

insert into produtos (nome, preco) values ('PC', 3000);

insert into categorias (nome) values ("esporte"), ("escolar"), ("veiculos");

insert into categorias (nome) values ("Tecnologia");

insert into produtos(nome, preco, descricao, categoria_id, usado) values('teste', 20, 'teste', 1, '')


-- update - alteraçao
UPDATE `lojaa`.`produtos` SET `descricao`='Descricao deste produto' WHERE `id`='9';

UPDATE `lojaa`.`produtos` SET `categoria_id`='3' WHERE `id`='1';
UPDATE `lojaa`.`produtos` SET `categoria_id`='3' WHERE `id`='2';
UPDATE `lojaa`.`produtos` SET `categoria_id`='4' WHERE `id`='4';
UPDATE `lojaa`.`produtos` SET `categoria_id`='4' WHERE `id`='5';
UPDATE `lojaa`.`produtos` SET `categoria_id`='4' WHERE `id`='7';
UPDATE `lojaa`.`produtos` SET `categoria_id`='4' WHERE `id`='9';
UPDATE `lojaa`.`produtos` SET `categoria_id`='4' WHERE `id`='14';




-- select -- pesquisa
SELECT * FROM produtos;

SELECT * FROM categorias;



