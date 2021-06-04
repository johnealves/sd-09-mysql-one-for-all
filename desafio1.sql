DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE subscriptions(
	subscription_id INT NOT NULL,
    subscription VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    CONSTRAINT PRIMARY KEY (subscription_id)
);

CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    subscription_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id),
    FOREIGN KEY (subscription_id) REFERENCES subscriptions (subscription_id)
);

CREATE TABLE artists(
	artist_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_id)
);

CREATE TABLE albums(
	album_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);

CREATE TABLE songs(
	song_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES albums (album_id)
);

CREATE TABLE playback_history(
	playback_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (playback_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (song_id) REFERENCES songs (song_id)
);

CREATE TABLE followers(
	artist_id INT NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_id, user_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

INSERT INTO subscriptions(subscription_id, subscription, price)
VALUES
	(1, 'gratuito', 0),
    (2, 'universitário', 0),
    (3, 'familiar', 0);

INSERT INTO users(name, age, subscription_id)
VALUES
	('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

INSERT INTO artists(name)
VALUES
	('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');
    
INSERT INTO albums(name, artist_id)
VALUES
	('Envious',1),
    ('Exuberant',1),
    ('Hallowed Steam',2),
    ('Incandescent',3),
    ('Temporary Culture',4);