DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE schemes (
    plan_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    plan VARCHAR(100) NOT NULL,
    price DECIMAL(4, 2) NOT NULL
)  ENGINE = INNODB;

CREATE TABLE users(
    user_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    plan_id INTEGER NOT NULL, FOREIGN KEY(plan_id) REFERENCES schemes(plan_id)
) ENGINE = INNODB;

CREATE TABLE artists (
    artist_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL
)  ENGINE = INNODB;

CREATE TABLE albums(
    album_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    album_title VARCHAR(100) NOT NULL,
    artist_id INTEGER NOT NULL, FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
) ENGINE = INNODB;

CREATE TABLE songs (
    song_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(100) NOT NULL,
    album_id INTEGER NOT NULL, FOREIGN KEY(album_id) REFERENCES albums(album_id)
)  ENGINE = INNODB;

CREATE TABLE following_artists(
    user_id INTEGER,
    artist_id INTEGER,
    FOREIGN KEY (user_id)
        REFERENCES users (user_id),
    FOREIGN KEY (artist_id)
        REFERENCES artists (artist_id),
    CONSTRAINT pk_following_artists PRIMARY KEY (user_id , artist_id)
) ENGINE = INNODB;

CREATE TABLE reproduction_history(
    user_id INTEGER,
    song_id INTEGER,
    FOREIGN KEY (user_id)
        REFERENCES users (user_id),
    FOREIGN KEY (song_id)
        REFERENCES songs (song_id),
    CONSTRAINT pk_reproduction_history PRIMARY KEY (user_id , song_id)
) ENGINE = INNODB;

INSERT INTO schemes (plan, price) VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);


INSERT INTO users (user_name, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artists (artist_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums (album_title, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (song_title, album_id) VALUES
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

INSERT INTO following_artists (user_id, artist_id) VALUES
(1,	1),
(1,	4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);

INSERT INTO reproduction_history (user_id, song_id) VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 2),
(2, 13),
(2, 17),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
