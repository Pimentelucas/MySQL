CREATE DATABASE RH;

USE RH;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    datainicio DATE,
    PRIMARY KEY (id)
);

INSERT INTO colaboradores (nome, cargo, salario, datainicio) VALUES
('João Silva', 'Analista de Sistemas', 5500.00, '2022-01-15'),
('Maria Oliveira', 'Gerente de Projetos', 8500.00, '2021-07-10'),
('Carlos Santos', 'Desenvolvedor Full Stack', 6200.00, '2023-03-01'),
('Ana Costa', 'Especialista em Redes', 7300.00, '2020-09-20'),
('Pedro Lima', 'Técnico de Suporte', 1500.00, '2022-05-30');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 7000 WHERE id = 1;