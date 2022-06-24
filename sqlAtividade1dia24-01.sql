USE SYS;
DROP DATABASE db_generation_game_online;

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE table tb_classes(
id int auto_increment primary key,
tipo_personagem varchar(255)

);

CREATE TABLE  tb_personagens (
id INT AUTO_INCREMENT PRIMARY KEY,
nome varchar(255),
poder_ataque INT,
defesa INT,
velocidade INT,
especialidade varchar(255),
tipo_personagem_fk int,
  FOREIGN KEY (tipo_personagem_fk) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (tipo_personagem) values ('feiticeira');
INSERT INTO tb_classes (tipo_personagem) values ('ninja');
INSERT INTO tb_classes (tipo_personagem) values ('mago');
INSERT INTO tb_classes (tipo_personagem) values ('guerreiro');
INSERT INTO tb_classes (tipo_personagem) values ('elfo');

INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Kessidy', 700, 900,800,'cura e regeneracao', 5);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Romano', 3000, 1000, 700,'manipulação de espadas',4);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Espectro', 4000, 6000, 1000,'bola de fogo', 3);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Akira', 2000, 3000,970, 'pulo de águia', 2);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Elza', 1000, 2000, 3000, 'congelamento', 1);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Flora', 2000, 3000, 6000, 'regeneracao e venenos', 5);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Dionísio', 1000, 3000, 1000,'raios negros', 3);
INSERT INTO tb_personagens (nome, poder_ataque, defesa, velocidade, especialidade , tipo_personagem_fk) values ('Saiuri', 2000, 2000,3000, 'punho do dragão', 2);

SELECT * FROM tb_personagens where poder_ataque > 2000;

SELECT * FROM tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like '%s%';

SELECT  p.nome, p.poder_ataque, p.defesa, p.velocidade, p.especialidade, p.tipo_personagem_fk
FROM tb_personagens p
INNER JOIN 	tb_classes c on p.tipo_personagem_fk = c.id;

SELECT   * 
FROM tb_personagens p
INNER JOIN 	 tb_classes c on p.tipo_personagem_fk = c.id where c.tipo_personagem = 'ninja';


