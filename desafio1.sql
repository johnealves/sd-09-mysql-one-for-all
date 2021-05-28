DROP SCHEMA IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- criação de tabelas Normalizadas
CREATE TABLE Planos (
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(20) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL
);

CREATE TABLE Usuarios (
	usuario_id INT PRIMARY KEY AUTO_INCREMENT ,
    usuario_nome VARCHAR(40) NOT NULL,
    usuario_idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
);

CREATE TABLE Artistas (
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(40) NOT NULL
);

CREATE TABLE Albums(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_id INT NOT NULL,
    album_nome VARCHAR(30) NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
);

CREATE TABLE Cancoes(
	cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    album_id INT NOT NULL,
    cancao_nome VARCHAR(40) NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Seguidores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
);

CREATE TABLE Historicos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES Cancoes(cancao_id)
);

-- Povoando as tabelas com os dados
INSERT INTO Planos (plano, valor_plano)
VALUES	('gratuito', 0),
		('familiar', 7.99),
        ('universitário', 5.99);

INSERT INTO Usuarios (usuario_nome, usuario_idade, plano_id)
VALUES	('Thati', 23, 1),
		('Cintia', 35, 2),
        ('Bill', 20, 3),
        ('Roger', 45, 1);

INSERT INTO Artistas (artista_nome)
VALUES	('Walter Phoenix'),
		('Peter Strong'),
        ('Lance Day'),
        ('Freedie Shannon');

INSERT INTO Albums (artista_id, album_nome)
VALUES	(1, 'Envious'),
		(1, 'Exuberant'),
        (2, 'Hallowed Steam'),
        (3, 'Incandescent'),
        (4,'Temporary Culture');
        
INSERT INTO Cancoes (album_id, cancao_nome)
VALUES	(1,'Soul For Us'),
		(1,'Reflections Of Magic'),
        (1,'Dance With Her Own'),
        (2,'Troubles Of My Inner Fire'),
        (2,'Time Fireworks'),
        (3,'Magic Circus'),
        (3,'Honey, So Do I'),
        (3,'Sweetie, Let\'s Go Wild'),
        (3,'She Knows'),
        (4,'Fantasy For Me'),
        (4,'Celebration Of More'),
        (4,'Rock His Everything'),
        (4,'Home Forever'),
        (4,'Diamond Power'),
        (4,'Honey, Let\'s Be Silly'),
        (5,'Thang Of Thunder'),
		(5,'Words Of Her Life'),
        (5,'Without My Streets');

INSERT INTO Seguidores (usuario_id, artista_id)
VALUES	(1, 1),
		(1, 3),
        (1, 4),
        (2, 1),
        (2, 3),
        (3, 1),
        (3, 2),
        (4, 4);

INSERT INTO Historicos(usuario_id, cancao_id)
VALUES	(1, 1),
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

-- fim da query que cria e povoa as tabelas relacionadas a musicas e artistas
