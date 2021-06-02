DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plans (
    plan_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(50) NOT NULL,
    plan_value DECIMAL(4 , 2 ) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id TINYINT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES SpotifyClone.Plans (plan_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.Albuns (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES SpotifyClone.Artists (artist_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES SpotifyClone.Albuns (album_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.UserFollowing (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES SpotifyClone.Users (user_id),
    FOREIGN KEY (artist_id)
        REFERENCES SpotifyClone.Artists (artist_id),
    CONSTRAINT PRIMARY KEY (user_id , artist_id)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.ReproductionHistory (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES SpotifyClone.Users (user_id),
    FOREIGN KEY (song_id)
        REFERENCES SpotifyClone.Songs (song_id),
    CONSTRAINT PRIMARY KEY (user_id , song_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.Plans (plan_name, plan_value) VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);


INSERT INTO SpotifyClone.Users (user_name, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.Artists (artist_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.Albuns (album_name, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.Songs (song_name, album_id) VALUES
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

INSERT INTO SpotifyClone.UserFollowing (user_id, artist_id) VALUES
(1,	1),
(1,	4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);

INSERT INTO SpotifyClone.ReproductionHistory (user_id, song_id) VALUES
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
