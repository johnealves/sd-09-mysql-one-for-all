DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABlE plans (
	plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(50) NOT NULL,
  plan_valor DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  user_age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE = InnoDB;

CREATE TABLE artist (
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albums (
	album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE = InnoDB;

CREATE TABLE songs (
	song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(200) NOT NULL,
  album_id INT NOT NULL
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (song_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id),
  PRIMARY KEY (user_id, song_id)
) ENGINE = InnoDB;

CREATE TABLE follow (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
  PRIMARY KEY (user_id, artist_id)
);

INSERT INTO artist (artist_name)
VALUES
("Royal Blood"),
("Highly Suspect"),
("The Fallen State"),
("Nirvana");

INSERT INTO plans (plan_name, plan_valor)
VALUES
("Individual", 19,90),
("familia", 34.90),
("universitario", 9.90);

INSERT INTO albums (album_name, artist_id)
VALUES
("Royal Blood", 1),
("The Boy Who Die Wolf", 2),
("Nova",3),
("Nevermind", 4),


INSERT INTO users (user_name, user_age, plan_id)
VALUES
("Felipe", 32, 1),
("Gomes", 33, 2),
("Luna", 34, 3),

INSERT INTO songs (song_name, album_id)
VALUES
("Figure It Out", 1),
("Little Brother", 1),
("Out of the Black", 1),
("Oblivion", 1),
("Blood Hands", 1),
("Teen tonne Skeleton", 1),
("Come on Over", 2),
("Who Needs Friends", 2),
("In Bloom", 4);

INSERT INTO follow (user_id, artist_id)
VALUES
(1,	1),
(1,	2),
(1,	3),
(2,	1),
(2,	2),
(3,	1),
(3,	2),
(3,	4);

INSERT INTO history (user_id, song_id)
VALUES
(1,	1),
(1,	2),
(1,	3),
(1,	4),
(2,	5),
(2,	6),
(2,	7),
(2,	8),
(3,	9),