DROP SCHEMA IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
	plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(100) NOT NULL,
    valor DOUBLE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE usuarios (
	usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    usuario VARCHAR(1000) NOT NULL, 
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE=InnoDB;

CREATE TABLE artistas(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE albuns(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) ENGINE=InnoDB;

CREATE TABLE cancoes(
	cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(100) NOT NULL,
    album_id  INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) ENGINE=InnoDB;

CREATE TABLE seguindo_artista(
	usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    PRIMARY KEY (usuario_id, artista_id)
) ENGINE=InnoDB;

CREATE TABLE historico_de_reproducao(
	usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
    PRIMARY KEY (usuario_id, cancao_id)
) ENGINE=InnoDB;

INSERT INTO planos(plano, valor)
VALUES ('gratuito', 0),
	   ('familiar', 7.99),
       ('universitário', 5.99);

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES ('Thati', 23, 1),
	   ('Cintia', 35, 2),
       ('Bill', 20, 3),
       ('Roger', 45, 1);
       
INSERT INTO artistas(artista)
VALUES ('Walter Phoenix'),
	   ('Peter Strong'),
       ('Lance Day'),
       ('Freedie Shannon');

INSERT INTO albuns(album, artista_id)
VALUES ('Envious', 1),
	   ('Exuberant', 1),
       ('Halloweed Steam', 2),
       ('Incandescent', 3),
       ('Temporary Culture', 4);

INSERT INTO cancoes(cancao, album_id)
VALUES ('Soul for Us', 1),
	   ('Magic Circus', 3),
       ('Diamond Power', 4),
       ('Thang Of Thunder', 5),
       ('Home Forever', 4),
       ('Words Of Her Life', 5),
	   ('Reflections Of Magic', 1),
       ('Honey, Let\'s Be Silly', 4),
       ('Troubles Of My Inner Fire', 2),
       ('Dance With Her Own', 1),
       ('Sweetie, Let\'s Go Wild', 3),
       ('Time Fireworks', 2),
       ('Honey, So Do I', 3),
       ('She Knows', 3),
       ('Fantasy For Me', 4),
       ('Celebration Of More', 4),
       ('Rock His Everything', 4),
       ('Without My Streets', 5);

INSERT INTO historico_de_reproducao(usuario_id, cancao_id)
VALUES (1, 1),
	   (1, 2),
       (1, 3),
       (1, 4),
       (2, 5),
       (2, 6),
	   (2, 7),
       (2, 12),
       (3, 9),
       (3, 4),
       (3, 2),
       (4, 10),
       (4, 17),
       (4, 15);
       
INSERT INTO seguindo_artista(usuario_id, artista_id)
VALUES (1, 1),
	   (1, 4),
       (1, 3),
       (2, 1),
       (2, 3),
       (3, 2),
	   (3, 1),
       (4, 4);    
