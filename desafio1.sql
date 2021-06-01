DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS SpotifyClone.plano (
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    plano VARCHAR(30) NOT NULL,
    valor DECIMAL(4 , 2 ) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS SpotifyClone.usuario (
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    usuario VARCHAR(30) NOT NULL,
    idade INTEGER NOT NULL,
    plano_id INTEGER NOT NULL,
    CONSTRAINT fk_usuario_plano FOREIGN KEY (plano_id) REFERENCES plano (id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS SpotifyClone.artista (
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    artista VARCHAR(60) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS SpotifyClone.album (
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    album VARCHAR(150) NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT fk_album_artista FOREIGN KEY (artista_id) REFERENCES artista (id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS SpotifyClone.cancao (
    id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    album_id INT NOT NULL,
    cancao VARCHAR(150) NOT NULL,
    CONSTRAINT fk_cancao_album FOREIGN KEY (album_id) REFERENCES album (id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS SpotifyClone.historico_reproducao (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , cancao_id),
    CONSTRAINT fk_historico_usuario FOREIGN KEY (usuario_id) REFERENCES usuario (id),
    CONSTRAINT fk_historico_cancao FOREIGN KEY (cancao_id) REFERENCES cancao (id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS SpotifyClone.seguindo_artista (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
    CONSTRAINT fk_seguindo_artista_usuario FOREIGN KEY (usuario_id) REFERENCES usuario (id),
    CONSTRAINT fk_seguindo_artista_artista FOREIGN KEY (artista_id) REFERENCES artista (id)
)  ENGINE=INNODB;

INSERT INTO plano (plano, valor) VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO artista (artista) VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');

INSERT INTO usuario (usuario, idade, plano_id) VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO album (album, artista_id) VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 4),
  ('Incandescent', 3),
  ('Temporary Culture', 2);

INSERT INTO cancao (cancao, album_id) VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ('Sweetie, Lets Go Wild', 3),
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

  INSERT INTO historico_reproducao (usuario_id, cancao_id) VALUES
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

  INSERT INTO seguindo_artista (usuario_id, artista_id) VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);
