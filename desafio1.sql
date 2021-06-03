DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone ;

USE SpotifyClone;

CREATE TABLE `plans`(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE `users`(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES `plans`(plano_id)
) engine = InnoDB;

CREATE TABLE `artists`(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE `albums`(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_nome VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES `artists`(artista_id) 
) engine = InnoDB;

CREATE TABLE `songs`(
	cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao_titulo VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES `albums`(album_id) 
) engine = InnoDB;

CREATE TABLE `user_follows`(
	usuario_id INT,
	artista_id INT,
    PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES `users`(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES `artists`(artista_id) 
) engine = InnoDB;

CREATE TABLE `playlist_history`(
	usuario_id INT,
	cancao_id INT,
    PRIMARY KEY(usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES `users`(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES `songs`(cancao_id) 
) engine = InnoDB;

INSERT INTO `plans` (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO `users` (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', '35', 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO `artists` (artista_nome)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO `albums` (album_nome, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Icandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO `songs` (cancao_titulo, album_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);
  
INSERT INTO `user_follows` (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

INSERT INTO `playlist_history` (usuario_id, cancao_id)
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
