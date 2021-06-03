DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
plano_id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
valor DECIMAL(4, 2) NOT NULL,
CONSTRAINT PRIMARY KEY (plano_id)
);

INSERT INTO SpotifyClone.planos (nome, valor)
VALUES ('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

CREATE TABLE SpotifyClone.usuarios (
usuario_id INT AUTO_INCREMENT NOT NULL,
usuario VARCHAR(255) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id),
FOREIGN KEY (plano_id)
REFERENCES SpotifyClone.planos (plano_id)
);

INSERT INTO SpotifyClone.usuarios (usuario, idade, plano_id)
VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

CREATE TABLE SpotifyClone.artistas (
artista_id INT AUTO_INCREMENT NOT NULL,
artista VARCHAR(255) NOT NULL,
CONSTRAINT PRIMARY KEY (artista_id)
);

INSERT INTO SpotifyClone.artistas (artista)
VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');

CREATE TABLE SpotifyClone.albuns (
album_id INT AUTO_INCREMENT NOT NULL,
album VARCHAR(255) NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (album_id),
FOREIGN KEY (artista_id)
REFERENCES SpotifyClone.artistas (artista_id)
);

INSERT INTO SpotifyClone.albuns (album, artista_id)
VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);

CREATE TABLE SpotifyClone.musicas (
musica_id INT AUTO_INCREMENT NOT NULL,
musica VARCHAR(255) NOT NULL,
album_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (musica_id),
FOREIGN KEY (album_id)
REFERENCES SpotifyClone.albuns (album_id)
);

INSERT INTO SpotifyClone.musicas (musica, album_id)
VALUES ('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2), ('Magic Circus', 3), ('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3), ('She Knows', 3), ('Fantasy For Me', 4), ('Celebration Of More', 4), ('Rock His Everything', 4),
('Home Forever', 4), ('Diamond Power', 4), ('Honey, Let\'s Be Silly', 4), ('Thang Of Thunder', 5), ('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE SpotifyClone.historico_reproducoes (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id)
REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (musica_id)
REFERENCES SpotifyClone.musicas (musica_id)
);

INSERT INTO SpotifyClone.historico_reproducoes (usuario_id, musica_id)
VALUES (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6),
(4, 3), (4, 18), (4, 11);

CREATE TABLE SpotifyClone.seguindo_artistas (
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (artista_id, usuario_id),
FOREIGN KEY (artista_id)
REFERENCES SpotifyClone.artistas (artista_id),
FOREIGN KEY (usuario_id)
REFERENCES SpotifyClone.usuarios (usuario_id)
);

INSERT INTO SpotifyClone.seguindo_artistas (artista_id, usuario_id)
VALUES (1, 1), (1, 2), (1, 3), (2, 3), (3, 1), (3, 2), (4, 1), (4, 4);
