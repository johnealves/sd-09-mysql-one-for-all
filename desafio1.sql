DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(50) NOT NULL,
    plan_value DECIMAL(4 , 2 ) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES SpotifyClone.plans (plan_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(150) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES SpotifyClone.artists (artist_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.songs (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_title VARCHAR(150) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES SpotifyClone.albums (album_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.reproduction_history (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id , song_id),
    FOREIGN KEY (user_id)
        REFERENCES SpotifyClone.users (user_id),
    FOREIGN KEY (song_id)
        REFERENCES SpotifyClone.songs (song_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.user_following (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id , artist_id),
    FOREIGN KEY (user_id)
        REFERENCES SpotifyClone.users (user_id),
    FOREIGN KEY (artist_id)
        REFERENCES SpotifyClone.artists (artist_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.plans (plan_name, plan_value)
VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO SpotifyClone.users (user_name, user_age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artists (artist_name)
VALUES
('Walter Phoenix'),
('Freddie Shannon'),
('Lance Day'),
('Peter Strong');

INSERT INTO SpotifyClone.albums (album_name, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);

INSERT INTO SpotifyClone.songs (song_title, album_id)
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
('Without The Streets', 5);

INSERT INTO SpotifyClone.reproduction_history (user_id, song_id)
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

INSERT INTO SpotifyClone.user_following (user_id, artist_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2);
