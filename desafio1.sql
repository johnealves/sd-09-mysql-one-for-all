DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
plano_id INT AUTO_INCREMENT NOT NULL,
plano VARCHAR(255) NOT NULL,
valor DOUBLE NOT NULL,
CONSTRAINT PRIMARY KEY (plano_id)
);

insert into SpotifyClone.planos (plano, valor) 
values
('gratuito', 0.00), ('familiar', 7.99), ('universitário', 5.99);

CREATE TABLE SpotifyClone.usuarios (
usuario_id INT AUTO_INCREMENT NOT NULL,
usuario VARCHAR(255) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id),
FOREIGN KEY (plano_id)
REFERENCES SpotifyClone.planos (plano_id)
);

insert into SpotifyClone.usuarios
(usuario, idade, plano_id)
values
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE SpotifyClone.artistas (
artista_id INT AUTO_INCREMENT NOT NULL,
artista VARCHAR(255) NOT NULL,
constraint primary key(artista_id)
);

insert into SpotifyClone.artistas (artista)
values
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE SpotifyClone.albuns (
album_id INT AUTO_INCREMENT NOT NULL,
album VARCHAR(255) NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (album_id),
FOREIGN KEY (artista_id)
REFERENCES SpotifyClone.artistas (artista_id)
);

insert into SpotifyClone.albuns
(album, artista_id)
values
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE SpotifyClone.musicas (
musica_id INT AUTO_INCREMENT NOT NULL,
musica VARCHAR(255) NOT NULL,
album_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (musica_id),
FOREIGN KEY (album_id)
REFERENCES SpotifyClone.albuns (album_id)
);

insert into SpotifyClone.musicas
(musica, album_id)
values
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE SpotifyClone.historico_reproducoes (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id , musica_id),
FOREIGN KEY (usuario_id)
REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (musica_id)
REFERENCES SpotifyClone.musicas (musica_id)
);

insert into SpotifyClone.historico_reproducoes
(usuario_id, musica_id)
values
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

CREATE TABLE SpotifyClone.artistas_seguidos (
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
FOREIGN KEY (artista_id)
REFERENCES SpotifyClone.artistas (artista_id),
FOREIGN KEY (usuario_id)
REFERENCES SpotifyClone.usuarios (usuario_id)
);

insert into SpotifyClone.artistas_seguidos
(artista_id, usuario_id)
values
(1, 1),
(4, 1),
(3, 1),
(1, 2),
(3, 2),
(2, 3),
(1, 3),
(4, 4);
