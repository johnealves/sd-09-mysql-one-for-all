-- create DB 
DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- create tables
CREATE TABLE IF NOT EXISTS Artists (
  artist_id INT NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL,
  CONSTRAINT PRIMARY KEY (artist_id)
) ENGINE = innodb;

CREATE TABLE IF NOT EXISTS Albums (
  album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
) ENGINE = innodb;

CREATE TABLE IF NOT EXISTS Songs (
  song_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Albums (album_id)
) ENGINE = innodb;

CREATE TABLE IF NOT EXISTS Plans (
  plan_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(50) NOT NULL,
  value_plan DOUBLE NOT NULL
) ENGINE = innodb;

CREATE TABLE IF NOT EXISTS Users (
  user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES Plans (plan_id)
) ENGINE = innodb;

CREATE TABLE IF NOT EXISTS History (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (song_id) REFERENCES Songs (song_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id)
) ENGINE = innodb;

CREATE TABLE IF NOT EXISTS Following (
  artist_id INT NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (artist_id, user_id),
  FOREIGN KEY (artist_id) REFERENCES Artists (artist_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id)
) ENGINE = innodb;

INSERT INTO Plans (plan_name, value_plan) VALUES
  ('gratuito', 0.00),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO Users (name, age, plan_id) VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);
  
INSERT INTO Artists (artist_name) VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
 
INSERT INTO Albums (album_name, artist_id) VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO Songs (song_name, album_id) VALUES
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
 
 INSERT INTO History (user_id, song_id) VALUES
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
   
INSERT INTO Following (user_id, artist_id) VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);