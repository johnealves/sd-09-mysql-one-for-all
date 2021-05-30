DROP DATABASE IF EXISTS SpotifyClone;

CREATE SCHEMA SpotifyClone;

CREATE TABLE SpotifyClone.Planos(
plano_id INTEGER NOT NULL AUTO_INCREMENT,
plano VARCHAR(90),
valor DECIMAL(4, 2) NOT NULL,
CONSTRAINT PRIMARY KEY(plano_id)
);

CREATE TABLE SpotifyClone.Usuarios(
usuario_id INTEGER NOT NULL AUTO_INCREMENT,
usuario VARCHAR(255),
idade INTEGER,
plano_id INTEGER,
CONSTRAINT PRIMARY KEY(usuario_id),
FOREIGN KEY (plano_id) REFERENCES SpotifyClone.Planos (plano_id)
);

CREATE TABLE SpotifyClone.Artistas(
artista_id INTEGER NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
CONSTRAINT PRIMARY KEY(artista_id)
);

CREATE TABLE SpotifyClone.Albuns(
album_id INTEGER NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
artista_id INTEGER,
CONSTRAINT PRIMARY KEY(album_id),
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.Artistas (artista_id)
);

CREATE TABLE SpotifyClone.Musicas(
musica_id INTEGER NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
album_id INTEGER,
CONSTRAINT PRIMARY KEY(musica_id),
FOREIGN KEY (album_id) REFERENCES SpotifyClone.Albuns (album_id)
);

CREATE TABLE SpotifyClone.Historico(
usuario_id INTEGER,
musica_id INTEGER,
CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.Usuarios (usuario_id),
FOREIGN KEY (musica_id) REFERENCES SpotifyClone.Musicas (musica_id)
);

CREATE TABLE SpotifyClone.Seguindo(
usuario_id INTEGER,
artista_id INTEGER,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.Usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.Artistas (artista_id)
);

INSERT INTO SpotifyClone.Planos (plano, valor)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.Usuarios (usuario, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.Artistas (nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.Albuns (nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.Musicas (nome, album_id)
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

INSERT INTO SpotifyClone.Historico (usuario_id, musica_id)
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

INSERT INTO SpotifyClone.Seguindo (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
