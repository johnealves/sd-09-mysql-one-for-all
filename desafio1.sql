DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    plan_id TINYINT AUTO_INCREMENT PRIMARY KEY, 
    plan_type VARCHAR(40),
    price DECIMAL(5,2)
) engine = InnoDB;

CREATE TABLE users(
    user_id TINYINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    user_name VARCHAR(50),
    user_age TINYINT,
    plan_id TINYINT,
    FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) engine = InnoDB;

CREATE TABLE artists(
    artist_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50)
) engine = InnoDB;

CREATE TABLE albums(
    album_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(50),
    artist_id TINYINT,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE followers(
	-- followers_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    artist_id TINYINT NOT NULL,
    user_id TINYINT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    CONSTRAINT PRIMARY KEY (artist_id, user_id)
) engine = InnoDB;

CREATE TABLE songs(
	song_id TINYINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    song_name VARCHAR(70),
    album_id TINYINT,
    artist_name VARCHAR(50),
    FOREIGN KEY (album_id) REFERENCES albums (album_id)
) engine = InnoDB;

CREATE TABLE historic(
	-- historic_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    user_id TINYINT NOT NULL,
    song_id TINYINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (song_id) REFERENCES songs (song_id),
    PRIMARY KEY (user_id, song_id)
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
  
INSERT INTO albums (album_name, artist_id)
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
  
INSERT INTO songs (song_name, album_id, artist_name)
  VALUES 
	 ('Soul For Us', 1, 'Walter Phoenix'),
     ('Reflections Of Magic', 1, 'Walter Phoenix'),
     ('Dance With Her Own', 1, 'Walter Phoenix'),
     ('Troubles Of My Inner Fire', 1, 'Walter Phoenix'),
     ('Time Fireworks', 1, 'Walter Phoenix'),
     ('Magic Circus', 2, 'Peter Strong'),
     ('Honey, So Do I', 2, 'Peter Strong'),
     ('Sweetie, Let\'s Go Wild', 2, 'Peter Strong'),
     ('She Knows', 2, 'Peter Strong'),
     ('Fantasy For Me', 3, 'Lance Day'),
     ('Celebration Of More', 3, 'Lance Day'),
     ('Rock His Everything', 3, 'Lance Day'),
     ('Home Forever', 3, 'Lance Day'),
     ('Diamond Power', 3, 'Lance Day'),
     ('Honey, Let\'s Be Silly', 3, 'Lance Day'),
     ('Thang Of Thunder', 4, 'Freedie Shannon'),
     ('Words Of Her Life', 4, 'Freedie Shannon'),
     ('Without My Streets', 4, 'Freedie Shannon');
     
     
 INSERT INTO historic (user_id, song_id) 
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
