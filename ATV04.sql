CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoria VARCHAR(50) NOT NULL,
    descricaoCategoria TEXT NOT NULL
);

CREATE TABLE tb_pizzas (
    idPizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ingredientes TEXT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    idCategoria INT,
    FOREIGN KEY (idCategoria) REFERENCES tb_categorias(idCategoria)
);

INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria) VALUES
('Tradicional', 'Pizzas com sabores clássicos e tradicionais.'),
('Especial', 'Sabores elaborados e exclusivos.'),
('Doce', 'Pizzas com coberturas doces e sobremesas.'),
('Vegetariana', 'Opções sem carne, para vegetarianos.'),
('Premium', 'Pizzas feitas com ingredientes selecionados.');

INSERT INTO tb_pizzas (nome, ingredientes, valor, tamanho, idCategoria) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 40.00, 'Grande', 1),
('Pepperoni', 'Molho de tomate, mussarela, pepperoni', 55.00, 'Grande', 2),
('Chocolate', 'Chocolate ao leite, granulado', 60.00, 'Média', 3),
('Vegetariana', 'Molho de tomate, mussarela, brócolis, palmito', 50.00, 'Grande', 4),
('Quatro Queijos', 'Mussarela, parmesão, gorgonzola, provolone', 65.00, 'Grande', 5),
('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 45.00, 'Grande', 1),
('Romeu e Julieta', 'Goiabada, queijo', 48.00, 'Média', 3),
('Frango com Catupiry', 'Frango desfiado, catupiry, mussarela', 55.00, 'Grande', 2);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.nome AS Pizza, p.valor, c.nomeCategoria AS Categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.idCategoria = c.idCategoria;

SELECT p.nome AS Pizza, p.valor, c.nomeCategoria AS Categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.idCategoria = c.idCategoria
WHERE c.nomeCategoria = 'Doce';
