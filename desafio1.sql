DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
    id_plano INT AUTO_INCREMENT,
    tipo_plano VARCHAR(45) NOT NULL,
    preco_plano DOUBLE NOT NULL,
    PRIMARY KEY (id_plano)
) engine = InnoDB;

CREATE TABLE artistas(
    id_artista INT AUTO_INCREMENT,
    nome_artista VARCHAR(45) NOT NULL,    
    PRIMARY KEY (id_artista)
) engine = InnoDB;

CREATE TABLE usuarios(
    id_usuario INT AUTO_INCREMENT,
    nome_usuario VARCHAR(45) NOT NULL,
	idade_usuario INT NOT NULL,
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES planos(id_plano),
    PRIMARY KEY (id_usuario)
) engine = InnoDB;

CREATE TABLE albuns(
    id_album INT AUTO_INCREMENT,
    nome_album VARCHAR(150) NOT NULL,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista),
    PRIMARY KEY (id_album)
) engine = InnoDB;

CREATE TABLE musicas(
    id_musica INT AUTO_INCREMENT,
    nome_musica VARCHAR(150) NOT NULL,
    id_album INT,
    FOREIGN KEY (id_album) REFERENCES albuns(id_album),
    PRIMARY KEY (id_musica)
) engine = InnoDB;

CREATE TABLE historico(
    id_usuario INT,
    id_musica INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_musica) REFERENCES musicas(id_musica),
    PRIMARY KEY (id_usuario, id_musica)
) engine = InnoDB;

CREATE TABLE seguindo(
    id_usuario INT,
    id_artista INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista),
    PRIMARY KEY (id_usuario, id_artista)
) engine = InnoDB;

INSERT INTO planos (id_plano, tipo_plano, preco_plano)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);
  
INSERT INTO artistas (id_artista, nome_artista)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO usuarios (id_usuario, nome_usuario, idade_usuario, id_plano)
VALUES
  (1, 'Thati', 23, 1),  
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);
  
INSERT INTO albuns (id_album, nome_album, id_artista)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);
  
INSERT INTO musicas (id_musica, nome_musica, id_album)
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
  
INSERT INTO historico (id_usuario, id_musica)
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
  
INSERT INTO seguindo (id_usuario, id_artista)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  