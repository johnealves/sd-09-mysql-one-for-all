DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  plan_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(20) NOT NULL,
  plan_price DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE user(
  user_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(30) NOT NULL,
  age TINYINT NOT NULL,
  plan_id TINYINT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE artist(
  artist_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(30) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
  album_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(30) NOT NULL,
  artist_id TINYINT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE song(
  song_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(100) NOT NULL,
  album_id TINYINT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE history(
  user_id TINYINT NOT NULL,
  song_id TINYINT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (song_id) REFERENCES song(song_id),
  CONSTRAINT PRIMARY KEY(user_id, song_id)
) engine = InnoDB;

CREATE TABLE fallows_artists(
  user_id TINYINT NOT NULL,
  artist_id TINYINT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
  CONSTRAINT PRIMARY KEY(user_id, artist_id)
) engine = InnoDB;

INSERT INTO plan (plan_name, plan_price)
  VALUES
    ('free', 0.00),
    ('family', 7.99),
    ('student', 5.99);

INSERT INTO user (user_name, age, plan_id)
  VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

INSERT INTO artist(artist_name)
  VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO album(artist_id, album_name)
  VALUES
    (1, 'Envious'),
    (1, 'Exuberant'),
    (2, 'Hallowed Steam'),
    (3, 'Incandescent'),
    (4, 'Temporary Culture');

INSERT INTO song(album_id, song_name)
  VALUES
    (1, 'Soul For Us'),
    (1, 'Reflections Of Magic'),
    (1, 'Dance With Her Own'),
    (2, 'Troubles Of My Inner Fire'),
    (2, 'Time Fireworks'),
    (3, 'Magic Circus'),
    (3, 'Honey, So Do I'),
    (3, 'Sweetie, Let\'s Go Wild'),
    (3, 'She Knows'),
    (4, 'Fantasy For Me'),
    (4, 'Celebration Of More'),
    (4, 'Rock His Everything'),
    (4, 'Home Forever'),
    (4, 'Diamond Power'),
    (4, 'Honey, Let\'s Be Silly'),
    (5, 'Thang Of Thunder'),
    (5, 'Words Of Her Life'),
    (5, 'Without My Streets');

INSERT INTO history(user_id, song_id)
  VALUES
    (1, 1),
    (1, 6),
    (1, 14),
    (1, 16),
    (2 ,13),
    (2, 17),
    (2, 2),
    (2, 15),
    (3, 4),
    (3, 16),
    (3, 6),
    (4, 3),
    (4, 18),
    (4, 11);

INSERT INTO fallows_artists(user_id, artist_id)
  VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
