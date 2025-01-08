CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_classes (
    idClasse BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeClasse VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_personagens (
    idPersonagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poderAtaque INT NOT NULL,
    poderDefesa INT NOT NULL,
    nivel INT NOT NULL,
    idClasse BIGINT,
    FOREIGN KEY (idClasse) REFERENCES tb_classes(idClasse)
);

INSERT INTO tb_classes (nomeClasse, descricao) VALUES
('Guerreiro', 'Especializado em combate corpo a corpo e alta resistência.'),
('Arqueiro', 'Perito em ataques à distância com arco e flecha.'),
('Mago', 'Utiliza magias de ataque e suporte.'),
('Assassino', 'Focado em ataques rápidos e furtividade.'),
('Paladino', 'Mistura de combate e habilidades de suporte.');

INSERT INTO tb_personagens (nome, poderAtaque, poderDefesa, nivel, idClasse) VALUES
('Thorin', 1800, 1500, 15, 1),
('Legolas', 2500, 1200, 18, 2),
('Gandalf', 3000, 1000, 20, 3),
('Eowyn', 2000, 1100, 16, 1),
('Arwen', 2300, 1700, 19, 2),
('Saruman', 2800, 1300, 22, 3),
('Altair', 2700, 900, 21, 4),
('Uther', 1900, 2000, 17, 5);

SELECT * FROM tb_personagens WHERE poderAtaque > 2000;

SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.nome AS Personagem, c.nomeClasse AS Classe, c.descricao 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.idClasse = c.idClasse;

SELECT p.nome AS Personagem, c.nomeClasse AS Classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.idClasse = c.idClasse
WHERE c.nomeClasse = 'Arqueiro';
