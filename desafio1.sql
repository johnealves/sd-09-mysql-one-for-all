DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
    id_plano INT(10) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor_plano DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE artista(
	id_artista INT(10) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
	id_usuario INT(10) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER,
    id_plano INTEGER,
	FOREIGN KEY (id_plano) REFERENCES plano (id_plano)
) engine = InnoDB;

CREATE TABLE album(
	id_album INT(10) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_artista INTEGER,
	FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) engine = InnoDB;

CREATE TABLE cancoes(
	id_cancao INT(10) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_album INTEGER,
	FOREIGN KEY (id_album) REFERENCES album (id_album)
) engine = InnoDB;

CREATE TABLE user_reproducoes (
	id_usuario INTEGER,
    id_cancao INTEGER,
    CONSTRAINT PRIMARY KEY(id_usuario, id_cancao),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_cancao) REFERENCES cancoes (id_cancao)
) engine = InnoDB;

CREATE TABLE user_seguindo (
	id_usuario INTEGER,
    id_artista INTEGER,
    CONSTRAINT PRIMARY KEY(id_usuario, id_artista),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) engine = InnoDB;

INSERT INTO plano (id_plano, nome, valor_plano)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

INSERT INTO artista (id_artista, nome)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');
  
INSERT INTO usuario (id_usuario, nome, idade, id_plano)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35,	2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);
  
INSERT INTO album (id_album, nome, id_artista)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5,'Temporary Culture',4);
  
INSERT INTO cancoes (id_cancao, nome, id_album)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, "Sweetie, Let's Go Wild", 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, "Honey, Let's Be Silly", 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);
  
INSERT INTO user_reproducoes (id_usuario, id_cancao)
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

INSERT INTO user_seguindo (id_usuario, id_artista)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  
  