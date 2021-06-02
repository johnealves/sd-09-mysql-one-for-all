DROP SCHEMA IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE `Plans`(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(13) NOT NULL,
plan_value DOUBLE NOT NULL
) ENGINE = InnoDB;

INSERT INTO `Plans`(plan, plan_value)
VALUES
('Gratuito', 0),
('Universitário', 5.99),
('Familiar', 7.99);

CREATE TABLE `Users`(
`user_id` INT PRIMARY KEY AUTO_INCREMENT,
user VARCHAR(50) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES `Plans`(plan_id)
) ENGINE = InnoDB;

INSERT INTO `Users`(user, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

CREATE TABLE `Artists`(
artists_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO `Artists`(artist)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE `Albums`(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES `Artists`(artist_id)
) ENGINE = InnoDB;

INSERT INTO `Albums`(album, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE `Songs`(
songs_id INT PRIMARY KEY AUTO_INCREMENT,
songs VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES `Albums`(album_id)
) ENGINE = InnoDB;

INSERT INTO `Songs`(songs, album_id)
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

CREATE TABLE `Users_following_artists`(
`user_id` INT,
artists_id INT,
CONSTRAINT PRIMARY KEY (`user_id`, artists_id),
FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`),
FOREIGN KEY (artists_id) REFERENCES `Artists`(artists_id)
) ENGINE = InnoDB;

INSERT INTO `Users_following_artists`(`user_id`, artists_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE `Users_history_songs`(
`user_id` INT NOT NULL,
songs_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (`user_id`, songs_id),
FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`),
FOREIGN KEY (songs_id) REFERENCES `Songs`(songs_id)
) ENGINE = InnoDB;

INSERT INTO `Users_history_songs`
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
