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
('Rodrigo', 36, 1),
('Vilene', 43, 1),
('Maria', 67, 1),
('Marivone', 25, 1),
('Newton', 73, 1);



