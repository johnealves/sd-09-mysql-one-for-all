CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50),
    valor_plano DECIMAL(3 , 2 )
)  ENGINE=INNODB;

CREATE TABLE usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    idade INT,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES planos (plano_id)
)  ENGINE=INNODB;

CREATE TABLE artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50)
)  ENGINE=INNODB;

CREATE TABLE albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50),
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE cancoes (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(70),
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
)  ENGINE=INNODB;

CREATE TABLE historico (
    cancao_id INT NOT NULL,
    usuario_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (cancao_id , usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancoes (cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id)
)  ENGINE=INNODB;

CREATE TABLE seguidores_por_artistas (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

INSERT INTO planos(plano, valor_plano)
VALUES('GRATUITO', 0),
('UNIVERSITÁRIO', 5.99),
('FAMÍLIA', 7.99);

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES('Thati', 23, 1),
('Cintia', 35,  3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artistas(artista)
VALUES('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns(album, artista_id)
VALUES('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes(cancao, album_id)
VALUES('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
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

INSERT INTO historico(usuario_id, cancao_id)
VALUES(1, 1),
(1, 5),
(1, 13),
(1, 15),
(2, 12),
(2, 16),
(2, 2),
(2, 14),
(3, 4),
(3, 15),
(3, 5),
(4, 3),
(4, 17),
(4, 10);

INSERT INTO seguidores_por_artistas(usuario_id, artista_id)
VALUES(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
