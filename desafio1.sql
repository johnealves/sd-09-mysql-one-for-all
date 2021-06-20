DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plans(
	id_plan INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(20) NOT NULL,
    price DOUBLE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.artists(
	id_artist INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.albums(
	id_album INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artist INT NOT NULL,
    FOREIGN KEY (artist) REFERENCES artists(id_artist)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.users(
	id_user INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    user_age INT NOT NULL,
    plan INT NOT NULL,
    FOREIGN KEY (plan) REFERENCES SpotifyClone.plans(id_plan)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.following(
	id_user INT NOT NULL,
    id_artist INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES SpotifyClone.users(id_user),
    FOREIGN KEY (id_artist) REFERENCES SpotifyClone.artists(id_artist),
    CONSTRAINT PRIMARY KEY (id_user, id_artist)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.songs(
	id_song INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(50) NOT NULL,
    album INT NOT NULL,
    artist INT NOT NULL,
    FOREIGN KEY (album) REFERENCES SpotifyClone.albums(id_album),
    FOREIGN KEY (artist) REFERENCES SpotifyClone.artists(id_artist)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.stream_history(
	id_user INT NOT NULL,
    id_song INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES SpotifyClone.users(id_user),
    FOREIGN KEY (id_song) REFERENCES SpotifyClone.songs(id_song),
    CONSTRAINT PRIMARY KEY (id_user, id_song)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.plans(plan_name, price)
VALUES
	('Gratuito', 0.00),
    ('Universitário', 5.00),
    ('Familiar', 7.99);
    
INSERT INTO SpotifyClone.artists(artist_name)
VALUES
	('Freedie Shanno'),
    ('Lance Day'),
    ('Peter Strong'),
    ('Walter Phoenix');
    
INSERT INTO SpotifyClone.albums(album_name, artist)
VALUES
	('Envious', 4),
    ('Exuberant', 4),
    ('Hallowed Steam', 3),
    ('Incandescent', 2),
    ('Temporary Culture', 1);
    
INSERT INTO SpotifyClone.users(user_name, user_age, plan)
VALUES
	('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 3);

INSERT INTO SpotifyClone.songs(song_name, album, artist)
VALUES
	('Soul For Us', 1, 4),
    ('Reflections Of Magic', 1, 4),
    ('Dance With Her Own', 1, 4),
	('Troubles Of My Inner Fire', 2, 4),
    ('Time Fireworks', 2, 4),
    ('Magic Circus', 3, 3),
    ('Honey, So Do I', 3, 3),
    ('Sweetie, Let\'s Go Wild', 3, 3),
    ('She Knows', 3, 3),
    ('Fantasy For Me', 4, 2),
    ('Celebration Of More', 4, 2),
    ('Rock His Everything', 4, 2),
    ('Home Forever', 4, 2),
    ('Diamond Power', 4, 2),
    ('Honey, Let\'s Be Silly', 4, 2),
    ('Thang Of Thunder', 5, 1),
    ('Words Of Her Life', 5, 1),
    ('Without My Streets', 5, 1);
    
INSERT INTO SpotifyClone.following(id_user, id_artist)
VALUES
	(1, 4),
    (1, 1),
    (1, 2),
    (2, 4),
    (2, 2),
    (3, 3),
    (3, 4),
    (4, 1);
    
INSERT INTO SpotifyClone.stream_history(id_user, id_song)
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