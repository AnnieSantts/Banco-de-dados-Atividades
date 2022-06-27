drop database db_pizzaria_legal;

create database db_pizzaria_legal;
use db_pizzaria_legal;



create table  tb_categorias(
id INT auto_increment primary key,
tipo_pizza varchar(255)
);


create table tb_pizzas(
sabor varchar(255),
preco decimal(9,2),
fk_categoria int,
pizza_size varchar(255),
foreign key (fk_categoria) references tb_categorias(id)
);

insert into tb_categorias (tipo_pizza)values ('pizza salgada');
insert into tb_categorias (tipo_pizza)values ('pizza doce');
insert into tb_categorias (tipo_pizza)values ('pizza gourmet');
insert into tb_categorias (tipo_pizza)values ('pizza vegana');
insert into tb_categorias (tipo_pizza)values ('pizza premium');


insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('calabreza', 33.00, 'grande', 1);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('chocolate', 40.00, 'grande', 2);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('camarão', 50.00, 'média', 3);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('brócoles e tomate', 30.00, 'grande', 4);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('lagosta', 100.00, 'media', 5);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('Muzzarela', 30.00, 'grande', 1);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('morango com leite condensado', 47.00, 'media',2);
insert into tb_pizzas (sabor, preco, pizza_size, fk_categoria) values ('portuguesa', 42.00, 'grande', 1);

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where sabor like '%c%';

SELECT  p.sabor, p.preco, p.pizza_size, c.tipo_pizza
FROM tb_pizzas p
INNER JOIN 	tb_categorias c on p.fk_categoria = c.id;

SELECT  p.sabor, p.preco, p.pizza_size, c.tipo_pizza
FROM tb_pizzas p
INNER JOIN 	tb_categorias c on p.fk_categoria = c.id where c.tipo_pizza = 'pizza doce';


