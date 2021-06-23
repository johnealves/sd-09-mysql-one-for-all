DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artistas(
    artista_id INT NOT NULL PRIMARY KEY,
    artista_nome VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
    album_id INT NOT NULL PRIMARY KEY,
    album_nome VARCHAR(45) NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY(artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
    cancao_id INT NOT NULL PRIMARY KEY,
    cancao_nome VARCHAR(45) NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY(album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE planos(
    plano_id INT NOT NULL PRIMARY KEY,
    plano_nome VARCHAR(45) NOT NULL,
    valor DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
    usuario_id INT NOT NULL PRIMARY KEY,
    usuario_nome VARCHAR(45) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY(plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes(
	historico_id INT NOT NULL PRIMARY KEY,
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY(usuario_id) REFERENCES usuarios (usuario_id),
    CONSTRAINT FOREIGN KEY(cancao_id) REFERENCES cancoes (cancao_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
	seguir_id INT NOT NULL PRIMARY KEY,
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY(usuario_id) REFERENCES usuarios (usuario_id),
    CONSTRAINT FOREIGN KEY(artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO artistas (artista_id, artista_nome)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');
  
INSERT INTO albuns (album_id, album_nome, artista_id)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);
  
INSERT INTO cancoes (cancao_id, cancao_nome, album_id)
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
  (16, "Thang Of Thunder", 5),
  (17, "Words Of Her Life", 5),
  (18, "Without My Streets", 5);
  
INSERT INTO planos (plano_id, plano_nome, valor)
VALUES
	(1, "gratuito", 0),
    (2, "familiar", 7.99),
    (3, "universitário", 5.99);
    
INSERT INTO usuarios (usuario_id, usuario_nome, idade, plano_id)
VALUES
	(1, "Thati", 23, 1),
    (2,"Cintia", 35, 2),
    (3,"Bill", 20, 3),
	(4,"Roger", 45, 1);
    
INSERT INTO historico_reproducoes (historico_id, usuario_id, cancao_id)
VALUES
	(1, 1, 1),
    (2, 1, 6),
    (3, 1, 14),
    (4, 1, 16),
    (5, 2, 13),
    (6, 2, 17),
    (7, 2, 2),
    (8, 2, 15),
    (9, 3, 4),
    (10, 3, 16),
    (11, 3, 6),
    (12, 4, 3),
    (13, 4, 18),
    (14, 4, 11);
    
INSERT INTO seguindo_artistas (seguir_id, usuario_id, artista_id)
VALUES
	(1, 1, 1),
    (2, 1, 4),
    (3, 1, 3),
    (4, 2, 1),
    (5, 2, 3),
    (6, 3, 2),
    (7, 3, 1),
    (8, 4, 4);