DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artista(
    artista_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    artista_name VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO artista (artista_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE plano(
    plano_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    plano_name VARCHAR(50) NOT NULL,
    valor DECIMAL(3,2) NOT NULL
) engine = InnoDB;

INSERT INTO plano (plano_name, valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE usuario(
    usuario_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
	usuario_name VARCHAR(50) NOT NULL,
    plano_id INTEGER NOT NULL,
    idade INTEGER NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;

INSERT INTO usuario (usuario_name, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE album(
    album_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    artista_id INTEGER NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) engine = InnoDB;

INSERT INTO album (album_name, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE cancoes(
    cancao_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cancao_name VARCHAR(50) NOT NULL,
    album_id INTEGER NOT NULL,
	artista_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (album_id),
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) engine = InnoDB;

INSERT INTO cancoes (cancao_name, album_id, artista_id)
VALUES
('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 2, 1),
('Time Fireworks', 2, 1),
('Magic Circus', 3, 2),
('Honey, So Do I', 3, 2),
("Sweetie, Let's Go Wild", 3, 2),
('She Knows', 3, 2),
('Fantasy For Me', 4, 3),
('Celebration Of More', 4, 3),
('Rock His Everything', 4, 3),
('Home Forever', 4, 3),
('Diamond Power', 4, 3),
("Honey, Let's Be Silly", 4, 3),
('Thang Of Thunder', 5, 4),
('Words Of Her Life', 5, 4),
('Without My Streets', 5, 4);

CREATE TABLE artistas_seguindo(
    usuario_id INTEGER NOT NULL,
    artista_id INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
	FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) engine = InnoDB;

INSERT INTO artistas_seguindo (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE historico_reproducao(
    usuario_id INTEGER NOT NULL,
    cancao_id INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
	FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
) engine = InnoDB;
  
INSERT INTO historico_reproducao (usuario_id, cancao_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);