CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE singers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    singer VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE plans(
    id INT PRIMARY KEY AUTO_INCREMENT,
    plan VARCHAR(25) NOT NULL,
    plan_value DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
    `user` VARCHAR(50) NOT NULL,
    age SMALLINT NOT NULL,
    plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES plans(id)
) engine = InnoDB;

CREATE TABLE albums(
	id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50),
    singer_id INT,
    FOREIGN KEY (singer_id) REFERENCES singers(id)
) engine = InnoDB;

CREATE TABLE songs(
    id INT PRIMARY KEY AUTO_INCREMENT,
    song VARCHAR(75) NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES albums(id)
) engine = InnoDB;

CREATE TABLE users_songs(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (song_id) REFERENCES songs(id),
    CONSTRAINT PRIMARY KEY(user_id, song_id)
) engine = InnoDB;

CREATE TABLE users_singers(
    user_id INT NOT NULL,
    singer_id INT NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (singer_id) REFERENCES singers(id),
    CONSTRAINT PRIMARY KEY(user_id, singer_id)
) engine = InnoDB;

INSERT INTO singers (singer)
VALUES
	('Walter Phoenix'),
	('Peter Strong'),
	('Lance Day'),
	('Freedie Shannon');

INSERT INTO plans (plan, plan_value)
VALUES
	('gratuito', 0.00),
	('familiar', 7.99),
	('universitário', 5.99);
  
INSERT INTO users (`user`, age, plan_id )
VALUES
	('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);
    
INSERT INTO albums (album, singer_id)
VALUES
	('Envious', 1),
	('Exuberant', 1),
	('Hallowed Steam', 2),
	('Incandescent', 3),
	('Temporary Culture', 4);
  
INSERT INTO songs (song, album_id)
VALUES
	('Soul For Us', 1),
	('Magic Circus', 3),
	('Diamond Power', 4),
	('Thang Of Thunder', 5),
	('Home Forever', 4),
	('Words Of Her Life', 5),
	('Reflections Of Magic', 1),
	('Honey, Let\'s Be Silly', 4),
	('Troubles Of My Inner Fire', 2),
	('Dance With Her Own', 1),
	('Without My Streets', 5),
	('Celebration Of More', 4),
	('Time Fireworks', 2),
	('Honey, So Do I', 3),
	('Sweetie, Let\'s Go Wild', 3),
	('She Knows', 3),
	('Fantasy For Me', 4),
	('Rock His Everything', 4);
  
INSERT INTO users_songs (user_id, song_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(3, 9),
	(3, 4),
	(3, 2),
	(4, 10),
	(4, 11),
	(4, 12);
  
INSERT INTO users_singers (user_id, singer_id)
VALUES
	(1, 1),
	(1, 4),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(3, 1),
	(4, 4);

