DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE planos (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(30) NOT NULL,
    valor_plano DOUBLE NOT NULL
)  ENGINE=INNODB;

CREATE TABLE usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT,
    FOREIGN KEY (plano_id)
        REFERENCES SpotifyClone.planos (plano_id)
)  ENGINE=INNODB;

CREATE TABLE artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(80) NOT NULL,
    artista_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE cancoes (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(100) NOT NULL,
    artista_id INT,
    album_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.artistas (artista_id),
    FOREIGN KEY (album_id)
        REFERENCES SpotifyClone.albuns (album_id)
)  ENGINE=INNODB;

CREATE TABLE historico_reproducoes_unicas (
    usuario_id INT,
    cancao_id INT,
    CONSTRAINT PRIMARY KEY (usuario_id , cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES SpotifyClone.usuarios (usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES SpotifyClone.cancoes (cancao_id)
)  ENGINE=INNODB;

CREATE TABLE usuarios_seguindo_artistas (
    usuario_id INT,
    artista_id INT,
    CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES SpotifyClone.usuarios (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.artistas (artista_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.planos (plano, valor_plano)
VALUES
("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

INSERT INTO SpotifyClone.usuarios (usuario, idade, plano_id)
VALUES
("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

INSERT INTO SpotifyClone.artistas (artista)
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO SpotifyClone.albuns (album, artista_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO SpotifyClone.cancoes (cancao, artista_id, album_id)
VALUES
("Soul For Us", 1, 1),
("Reflections Of Magic", 1, 1),
("Dance With Her Own", 1, 1),
("Troubles Of My Inner Fire", 1, 2),
("Time Fireworks", 1, 2),
("Magic Circus", 2, 3),
("Honey, So Do I", 2, 3),
("Sweetie, Let's Go Wild", 2, 3),
("She Knows", 2, 3),
("Fantasy For Me", 3, 4),
("Celebration Of More", 3, 4),
("Rock His Everything", 3, 4),
("Home Forever", 3, 4),
("Diamond Power", 3, 4),
("Honey, Let's Be Silly", 3, 4),
("Thang Of Thunder", 4, 5),
("Words Of Her Life", 4, 5),
("Without My Streets", 4, 5);

INSERT INTO SpotifyClone.historico_reproducoes_unicas (usuario_id, cancao_id)
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

INSERT INTO SpotifyClone.usuarios_seguindo_artistas (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);