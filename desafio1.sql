DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano(
    plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(45) NOT NULL,
    valor_plano DECIMAL(10,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Artista(
    artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE Album(
    album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(45) NOT NULL,
    artista_id INT NOT NULL,
	FOREIGN KEY (artista_id) REFERENCES Artista (artista_id)
) engine = InnoDB;

CREATE TABLE Cancao(
    cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(45) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
) engine = InnoDB;

CREATE TABLE Usuario(
    usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(45) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Plano (plano_id)
) engine = InnoDB;

CREATE TABLE Historico(
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    PRIMARY KEY (usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES Cancao (cancao_id)
) engine = InnoDB;

CREATE TABLE Seguindo(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES Artista (artista_id)
) engine = InnoDB;

INSERT INTO Plano (plano, valor_plano)
VALUES
('gratuito', 0),
('universitario', 5.99),
('familiar', 7.99);

INSERT INTO Artista (nome)
VALUES
('Water Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Album (album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Exuberant', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Usuario (usuario, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO Album (album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Exuberant', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Cancao (cancao, album_id)
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

INSERT INTO Historico (usuario_id, cancao_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 7),
(3, 4),
(3, 17),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO Seguindo (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
