DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuarios (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos(plano_id)
)

INSERT INTO usuarios (nome, idade, plano_id) VALUES
('Rodrigo', 36, 3),
('Vilene', 43, 1),
('Maria', 67, 2),
('Marivone', 25, 1),
('Newton', 73, 2);

CREATE TABLE planos (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  valor_plano DECIMAL(4, 2) NOT NULL,
)

INSERT INTO planos (nome, valor_plano) VALUES
('Básico', '10.00'),
('Médio', '20.00'),
('Avançado', '30.00'),
