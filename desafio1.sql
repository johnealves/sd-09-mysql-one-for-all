DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `account`(
    account_id TINYINT AUTO_INCREMENT,
    account_type VARCHAR(50) NOT NULL,
    account_price DOUBLE NOT NULL,
    PRIMARY KEY (account_id)
) engine = InnoDB;

CREATE TABLE `user`(
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    birth_year SMALLINT NOT NULL,
    account_id TINYINT,
    FOREIGN KEY (account_id) REFERENCES `account`(account_id),
    PRIMARY KEY (user_id)
) engine = InnoDB;

CREATE TABLE singer(
    singer_id INT AUTO_INCREMENT,
    singer_name VARCHAR(200) NOT NULL,
    PRIMARY KEY (singer_id)
) engine = InnoDB;

CREATE TABLE album(
    album_id INT AUTO_INCREMENT,
    album_name VARCHAR(200) NOT NULL,
    singer_id INT,
    PRIMARY KEY (album_id),
    FOREIGN KEY (singer_id) REFERENCES singer(singer_id)
) engine = InnoDB;

CREATE TABLE song(
    song_id INT AUTO_INCREMENT,
    album_id INT,
    song_name VARCHAR(200) NOT NULL,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE play_history(
    user_id INT,
    song_id INT,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES `user`(user_id),
    FOREIGN KEY (song_id) REFERENCES song(song_id)
) engine = InnoDB;

CREATE TABLE follow_history(
    user_id INT,
    singer_id INT,
    PRIMARY KEY (user_id, singer_id),
    FOREIGN KEY (user_id) REFERENCES `user`(user_id),
    FOREIGN KEY (singer_id) REFERENCES singer(singer_id)
) engine = InnoDB;

INSERT INTO `account` (account_id, account_type, account_price)
VALUES
	(1, 'gratuito', 0),
    (2, 'familiar', 7.99),
    (3, 'universitário', 5.99);

INSERT INTO `user` (user_id, user_name,	birth_year,	account_id)
VALUES
  (1, 'Thati', 1998, 1),
  (2, 'Cintia', 1986, 2),
  (3, 'Bill', 2001, 3),
  (4, 'Roger', 1976, 1);

INSERT INTO singer (singer_id, singer_name)
VALUES
	(1, 'Walter Phoenix'),
    (2, 'Peter Strong'),
    (3, 'Lance Day'),
    (4, 'Freedie Shannon');

INSERT INTO album (album_id, album_name, singer_id)
VALUES
	(1, 'Envious', 1),
    (2, 'Exuberant', 1),
    (3, 'Hallowed Steam', 2),
    (4, 'Incandescent', 3),
    (5, 'Temporary Culture', 4);
    
INSERT INTO song(song_id, album_id, song_name)
VALUES
	(1, 1, 'Soul For Us'),
    (2, 1, 'Reflections Of Magic'),
    (3, 1, 'Dance With Her Own'),
    (4, 2, 'Troubles Of My Inner Fire'),
    (5, 2, 'Time Fireworks'),
    (6, 3, 'Magic Circus'),
    (7, 3, 'Honey, So Do I'),
    (8, 3, "Sweetie, Let's Go Wild"),
    (9, 3, 'She Knows'),
    (10, 4, 'Fantasy For Me'),
    (11, 4, 'Celebration Of More'),
    (12, 4, 'Rock His Everything'),
    (13, 4, 'Home Forever'),
    (14, 4, 'Diamond Power'),
    (15, 4, "Honey, Let's Be Silly"),
    (16, 5, 'Thang Of Thunder'),
    (17, 5, 'Words Of Her Life'),
    (18, 5, 'Without My Streets');
    
INSERT INTO play_history(user_id, song_id)
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
    
INSERT INTO follow_history(user_id, singer_id)
VALUES
	(1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);

    