DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `plan`(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_type VARCHAR(50) NOT NULL,
    plan_price DECIMAL(4, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE `user`(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    birth_year INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY(plan_id) REFERENCES `plan`(`plan_id`)
) engine = InnoDB;

CREATE TABLE `artist`(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(200) NOT NULL
) engine = InnoDB;

CREATE TABLE `album`(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(200) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY(artist_id) REFERENCES `artist`(`artist_id`)
) engine = InnoDB;

CREATE TABLE `song`(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(200) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY(album_id) REFERENCES `album`(`album_id`)
) engine = InnoDB;

CREATE TABLE `following`(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
	PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY(user_id) REFERENCES `user`(`user_id`),
    FOREIGN KEY(artist_id) REFERENCES `artist`(`artist_id`)
) engine = InnoDB;

CREATE TABLE `history`(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY(user_id, song_id),
    FOREIGN KEY(user_id) REFERENCES `user`(`user_id`),
    FOREIGN KEY(song_id) REFERENCES `song`(`song_id`)
) engine = InnoDB;

INSERT INTO plan (plan_id, plan_type, plan_price)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

INSERT INTO `user` (user_id, user_name, birth_year, plan_id)
VALUES
  (1, 'Thati', 1998, 1),
  (2, 'Cintia', 1986, 2),
  (3, 'Bill', 2001, 3),
  (4, 'Roger', 1976, 1);

INSERT INTO artist (artist_id, artist_name)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO album (album_id, album_name, artist_id)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);
  
INSERT INTO song (song_id, song_name, album_id)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, "Sweetie, Let's Go Wild", 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, "Honey, Let's Be Silly", 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);
  
INSERT INTO `following` (user_id, artist_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

INSERT INTO `history` (user_id, song_id)
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
