DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
    plan_id INT AUTO_INCREMENT,
    plan_name VARCHAR(50) NOT NULL,
    plan_price DECIMAL NOT NULL,
    PRIMARY KEY(plan_id)
) engine = InnoDB;

CREATE TABLE `user`(
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    PRIMARY KEY(user_id),
    FOREIGN KEY(plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE artist(
    artist_id INT AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(artist_id)
) engine = InnoDB;

CREATE TABLE album(
    album_id INT AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY(album_id),
    FOREIGN KEY(artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
    song_id INT AUTO_INCREMENT,
    song_title VARCHAR(50) NOT NULL,
    album_id INT,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;
CREATE TABLE `history`(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

CREATE TABLE follow(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

INSERT INTO plan(plan_name, plan_price)
VALUES 
  ("gratuito", 0.00),
  ("familiar", 7.99),
  ("universitário", 5.99);
  
INSERT INTO user(user_name, age, plan_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

INSERT INTO artist(artist_name)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

INSERT INTO album(album_name, artist_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 2),
  ("Hallowed Steam", 3),
  ("Incandescent", 4),
  ("Temporary Culture", 3);
  
INSERT INTO songs(song_title, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);

INSERT INTO follow(user_id, artist_id) VALUES   (1,	1),
  (1,	3),
  (1,	4),
  (2,	1),
  (2,	3),
  (3,	1),
  (3,	2),
  (4, 4);

INSERT INTO history(user_id, song_id)
VALUES
(1, 4),
(2, 3),
(3, 4),
(4, 3),
(2, 6),
(3, 5),
(1, 7),
(2, 4),
(3, 3),
(4, 2),
(1, 3),
(1, 2),
(2, 12),
(2, 14);

