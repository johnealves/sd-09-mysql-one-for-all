DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(15),
    plan_price DECIMAL(6,2)
) engine = InnoDB;

CREATE TABLE `user`(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(80),
    age INT,
    plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE musician(
    musician_id INT AUTO_INCREMENT PRIMARY KEY,
    musician_name VARCHAR(80)
) engine = InnoDB;

CREATE TABLE album(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(40),
    musician_id INT,
    FOREIGN KEY (musician_id) REFERENCES musician(musician_id)
) engine = InnoDB;

CREATE TABLE song(
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(40),
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE playing_history(
    song_id INT,
    user_id INT,
    PRIMARY KEY (song_id, user_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
) engine = InnoDB;

CREATE TABLE `following`(
    user_id INT,
    musician_id INT,
    PRIMARY KEY (user_id, musician_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (musician_id) REFERENCES musician(musician_id)
) engine = InnoDB;

INSERT INTO plan (plan_name, plan_price)
VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99);

INSERT INTO `user` (user_name, age, plan_id)
VALUES
	('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

INSERT INTO musician (musician_name)
VALUES
    ('Walter Phoenix'),
    ('Freddie Shannon'),
    ('Lance Day'),
    ('Peter Strong');

INSERT INTO album (album_name, musician_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 4),
    ('Incandescent', 3),
    ('Temporary Culture', 2);

INSERT INTO song (song_name, album_id)
VALUES
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

INSERT INTO playing_history (song_id, user_id)
VALUES
    (1, 1),
    (6, 1),
    (14, 1),
    (16, 1),
    (13, 2),
    (17, 2),
    (2, 2),
    (15, 2),
    (3, 4),
    (16, 3),
    (6, 3),
    (3, 4),
    (18, 4),
    (11, 4);

INSERT INTO `following` (user_id, musician_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 4),
    (3, 1),
    (4, 2);
