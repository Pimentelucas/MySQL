CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL NOT NULL,
    quantidade INT,
    PRIMARY KEY (id)
);

INSERT INTO produtos (nome, categoria, preco, quantidade) VALUES
('Notebook Dell Inspiron', 'Eletrônicos', 3500.00, 15),
('Smartphone Samsung Galaxy S21', 'Eletrônicos', 2800.00, 30),
('Smart TV LG 55 Polegadas', 'Eletrônicos', 4500.00, 10),
('Cadeira Gamer ThunderX3', 'Móveis', 1200.00, 25),
('Mesa de Escritório', 'Móveis', 650.00, 20),
('Fogão 4 Bocas Brastemp', 'Eletrodomésticos', 1400.00, 12),
('Geladeira Frost Free Electrolux', 'Eletrodomésticos', 3100.00, 8),
('Livro Clean Code', 'Livros', 150.00, 50);


SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 499 WHERE id = 5;