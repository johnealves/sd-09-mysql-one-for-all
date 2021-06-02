DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuario (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    usuario CHAR(20) NOT NULL,
    idade INT(20) NOT NULL,
    plano_id INTEGER NOT NULL
) engine = InnoDB;

CREATE TABLE plano (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano CHAR(20) NOT NULL,
    valor_plano DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE artista (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    artista CHAR(20) NOT NULL
) engine = InnoDB;

CREATE TABLE musica (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    musica CHAR(20) NOT NULL,
    album_id INTEGER NOT NULL
) engine = InnoDB;

CREATE TABLE album (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    album CHAR(20) NOT NULL,
    artista_id INTEGER NOT NULL
) engine = InnoDB;

CREATE TABLE seguindo_artistas (
	usuario_id INTEGER NOT NULL,
    artista_id INTEGER NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY(artista_id) REFERENCES artista (artista_id),
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes (
	usuario_id INTEGER NOT NULL,
    musica_id INTEGER NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY(musica_id) REFERENCES musica (musica_id),
    CONSTRAINT PRIMARY KEY(usuario_id, musica_id)
) engine = InnoDB;

INSERT INTO usuario (usuario, idade, plano_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

INSERT INTO plano (plano, valor_plano)
VALUES 
  ("gratuito", 0),
  ("familiar", 7.99),
  ("universitário", 5.99);
  
  INSERT INTO artista (artista)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");
  
INSERT INTO musica (musica_name, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);

INSERT INTO album (album, artista_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO historico_reproducoes (musica_id, usuario_id)
VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);
