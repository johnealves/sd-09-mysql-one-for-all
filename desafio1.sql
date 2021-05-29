DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
    plano_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(100) NOT NULL,
    plano_valor DOUBLE NOT NULL
) engine = InnoDB;

INSERT INTO Planos (plano, plano_valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE Usuarios(
    usuario_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT(3) NOT NULL,
    plano_id INT(11),
    FOREIGN KEY (plano_id) REFERENCES Planos (plano_id)
) engine = InnoDB;

INSERT INTO Usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

CREATE TABLE Artistas(
    artista_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(150) NOT NULL
) engine = InnoDB;

INSERT INTO Artistas (artista)
VALUES
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong'),
  ('Walter Phoenix');

CREATE TABLE Albuns(
    album_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(150) NOT NULL,
    artista_id INT(11) NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

INSERT INTO Albuns (album, artista_id)
VALUES
  ('Envious', 4),
  ('Exuberant', 4),
  ('Hallowed Steam', 3),
  ('Incandescent', 2),
  ('Temporary Culture', 1);

CREATE TABLE Musicas(
    musica_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR(300) NOT NULL,
    album_id INT(11) NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albuns (album_id)
) engine = InnoDB;

INSERT INTO Musicas (musica, album_id)
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

CREATE TABLE Seguidores(
    usuario_id INT(11),
    artista_id INT(11),
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY(usuario_id) REFERENCES Usuarios (usuario_id),
    FOREIGN KEY(artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

INSERT INTO Seguidores (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 4),
  (2, 2),
  (2, 4),
  (3, 3),
  (3, 4),
  (4, 1);

CREATE TABLE Historico(
    usuario_id INT(11),
    musica_id INT(11),
    CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
    FOREIGN KEY(usuario_id) REFERENCES Usuarios (usuario_id),
    FOREIGN KEY(musica_id) REFERENCES Musicas (musica_id)
) engine = InnoDB;

INSERT INTO Historico (usuario_id, musica_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 2),
  (2, 13),
  (2, 15),
  (2, 17),
  (3, 4),
  (3, 6),
  (3, 16),
  (4, 3),
  (4, 11),
  (4, 18);