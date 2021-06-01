DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `plan`(
   plan_id INT PRIMARY KEY AUTO_INCREMENT,
   plan_name VARCHAR(20) UNIQUE NOT NULL,
   price DECIMAL(10,2)
) engine = InnoDB;

CREATE TABLE `user`(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) UNIQUE NOT NULL,
    age INT,
    plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES plan (plan_id)
) engine = InnoDB;

CREATE TABLE artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) UNIQUE NOT NULL
) engine = InnoDB;

CREATE TABLE album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
) engine = InnoDB;

CREATE TABLE music(
    music_id INT PRIMARY KEY AUTO_INCREMENT,
    music_name VARCHAR(100) NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

CREATE TABLE music_history(
    music_id INT,
    user_id INT,
    FOREIGN KEY (music_id) REFERENCES music (music_id),
    FOREIGN KEY (user_id) REFERENCES `user` (user_id),
    CONSTRAINT PRIMARY KEY (music_id, user_id)
) engine = InnoDB;

CREATE TABLE followers(
    artist_id INT,
    user_id INT,
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
    FOREIGN KEY (user_id) REFERENCES `user` (user_id),
    CONSTRAINT PRIMARY KEY (artist_id, user_id)
) engine = InnoDB;

INSERT INTO `plan` (plan_name, price)
VALUES
('gratuito',0.00),
('universitário',5.99),
('familiar',7.99);

INSERT INTO `user` (user_name, age, plan_id)
VALUES
('Thati',23,1),
('Cintia',35,3),
('Bill',20,2),
('Roger',45,1);

INSERT INTO artist (artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album (album_name, artist_id)
VALUES
('Envious',1),
('Exuberant',1),
('Hallowed Steam',2),
('Incandescent',3),
('Temporary Culture',4);

INSERT INTO music (music_name, album_id)
VALUES
('Soul For Us',1),
('Reflections Of Magic',1),
('Dance With Her Own',1),
('Troubles Of My Inner Fire',2),
('Time Fireworks',2),
('Magic Circus',3),
('Honey, So Do I',3),
('Sweetie, Let\'s Go Wild',3),
('She Knows',3),
('Fantasy For Me',4),
('Celebration Of More',4),
('Rock His Everything',4),
('Home Forever',4),
('Diamond Power',4),
('Honey, Let\'s Be Silly',4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

INSERT INTO music_history (music_id, user_id)
VALUES
(1,1),
(6,1),
(14,1),
(16,1),
(13,2),
(17,2),
(2,2),
(15,2),
(4,3),
(16,3),
(6,3),
(3,4),
(18,4),
(11,4);

INSERT INTO followers (artist_id, user_id)
VALUES
(1,1),
(1,2),
(1,3),
(2,3),
(3,1),
(3,2),
(4,1),
(4,4);
