DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE DATABASE `SpotifyClone`;

USE `SpotifyClone`;

CREATE TABLE `Plans`(
  `plan_id` INT PRIMARY KEY AUTO_INCREMENT,
  `plan` VARCHAR(50) NOT NULL,
  `price` DOUBLE NOT NULL
) ENGINE = InnoDB;

INSERT INTO
  `Plans` (`plan`, `price`)
VALUES
  ('Gratuito', 0.00),
  ('Familiar', 7.99),
  ('Universitário', 5.99);

CREATE TABLE `Users`(
  `user_id` INT PRIMARY KEY AUTO_INCREMENT,
  `user` VARCHAR(255) NOT NULL,
  `age` INT NOT NULL,
  `plan_id` INT NOT NULL,
  FOREIGN KEY (`plan_id`) REFERENCES `Plans` (`plan_id`)
) ENGINE = InnoDB;

INSERT INTO
  `Users` (`user`, `age`, `plan_id`)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

CREATE TABLE `Artists` (
    `artist_id` INT PRIMARY KEY AUTO_INCREMENT,
    `artist` VARCHAR(255) NOT NULL
)  ENGINE=INNODB;

INSERT INTO
  `Artists` (`artist`)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');

CREATE TABLE `Albums`(
  `album_id` INT PRIMARY KEY AUTO_INCREMENT,
  `album` VARCHAR(255) NOT NULL,
  `artist_id` INT NOT NULL,
  FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`)
) ENGINE = InnoDB;

INSERT INTO
  `Albums` (`album`, `artist_id`)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 4),
  ('Incandescent', 3),
  ('Temporary Culture', 2);

CREATE TABLE `Songs`(
  `song_id` INT PRIMARY KEY AUTO_INCREMENT,
  `song` VARCHAR(255) NOT NULL,
  `album_id` INT NOT NULL,
  FOREIGN KEY (`album_id`) REFERENCES `Albums` (`album_id`)
) ENGINE = InnoDB;

INSERT INTO
  `Songs` (`song`, `album_id`)
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

CREATE TABLE `Listened_to`(
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`user_id`, `song_id`),
  FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`)
) ENGINE = InnoDB;

INSERT INTO
  `Listened_to` (`user_id`, `song_id`)
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

CREATE TABLE `Followed_by`(
  `artist_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`artist_id`, `user_id`),
  FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`),
  FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
) ENGINE = InnoDB;

INSERT INTO
  `Followed_by` (`user_id`, `artist_id`)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);
