DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    plan_id TINYINT AUTO_INCREMENT PRIMARY KEY, 
    plan_type VARCHAR(40),
    price DOUBLE
) engine = InnoDB;

CREATE TABLE users(
    user_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50),
    user_age TINYINT,
    plan_id TINYINT,
    FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) engine = InnoDB;

CREATE TABLE artists(
    artist_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50)
) engine = InnoDB;

CREATE TABLE albuns(
    album_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(50),
    artist_id TINYINT,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE followers(
	followers_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    artist_id TINYINT,
    user_id TINYINT,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
) engine = InnoDB;

CREATE TABLE songs(
	song_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(70),
    album_id TINYINT,
    FOREIGN KEY (album_id) REFERENCES albuns (album_id) 
) engine = InnoDB;

CREATE TABLE historic(
	historic_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    user_id TINYINT,
    artist_id TINYINT,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id) 
) engine = InnoDB;

INSERT INTO plans (plan_type, price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO users (user_name, user_age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
  
INSERT INTO artists (artist_name)
  VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO albuns (album_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO followers (artist_id, user_id)
  VALUES
  (1, 1),
  (3, 1),
  (4, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (1, 3),
  (4, 4);
  
INSERT INTO songs (song_name, album_id)
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
    ('Honey, Let\'s Be Silly', 4);
    
    
-- INSERT INTO historic (user_id, artist_id)
  
  
