DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS planos (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  valor DECIMAL(5, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
);

CREATE TABLE IF NOT EXISTS artistas (
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS albuns (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE IF NOT EXISTS cancoes (
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
);

CREATE TABLE IF NOT EXISTS usuario_seguindo_artistas (
  usuario_id INT,
  artista_id INT,
  CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE IF NOT EXISTS historico_cancoes (
  historico_cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
);

