DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
	plano_id INT PRIMARY KEY NOT NULL,
    descricao_plano VARCHAR(30) NOT NULL,
    valor_plano DECIMAL(5,2)    
) ENGINE = InnoDB;

CREATE TABLE Usuarios(
	usuario_id INT PRIMARY KEY NOT NULL,
    nome_usuario VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
) ENGINE = InnoDB;

CREATE TABLE Artistas(
	artista_id INT PRIMARY KEY NOT NULL,
    nome_artista VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Seguidores_Artistas(
	usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id),
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
) ENGINE = InnoDB;


CREATE TABLE Albuns(
	album_id INT PRIMARY KEY NOT NULL,
    titulo_album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) ENGINE = InnoDB;


CREATE TABLE Cancoes(
	cancao_id INT PRIMARY KEY NOT NULL,
    titulo_cancao VARCHAR(200) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
) ENGINE InnoDB;

CREATE TABLE Historico_Reproducoes(
	usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES Cancoes(cancao_id),
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id)
) ENGINE = InnoDB;

INSERT INTO Planos(plano_id, descricao_plano, valor_plano)
VALUES 
	(1, 'gratuito', 0),
    (2, 'familiar', 7.99),
    (3, 'universitário', 5.99);
    
INSERT INTO Usuarios(usuario_id, nome_usuario, idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO Artistas(artista_id, nome_artista)
VALUE 
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO Seguidores_Artistas(usuario_id, artista_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO Albuns(album_id, titulo_album, artista_id)
VALUE 
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

INSERT INTO Cancoes(cancao_id, titulo_cancao, album_id)
VALUE
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, 'Sweetie, Lets Go Wild', 3),
(9, 'She Knows', 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4),
(15, 'Honey, Lets Be Silly', 4),
(16, 'Thang Of Thunder', 5),
(17, 'Words Of Her Life', 5),
(18, 'Without My Streets', 5);

INSERT INTO Historico_Reproducoes(usuario_id, cancao_id)
VALUE
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
