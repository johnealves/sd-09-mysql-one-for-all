DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    plan_id INTEGER AUTO_INCREMENT,
    plan VARCHAR(100) NOT NULL,
    price NUMERIC(4,2) NOT NULL,
    CONSTRAINT pk_plans PRIMARY KEY(plan_id)
) engine = InnoDB;

CREATE TABLE users(
    user_id INTEGER AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    plan_id INTEGER NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY(user_id),
    CONSTRAINT fk_uspl FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) engine = InnoDB;

CREATE TABLE artists(
    artist_id INTEGER AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    CONSTRAINT pk_artists PRIMARY KEY(artist_id)
) engine = InnoDB;

CREATE TABLE albums(
    album_id INTEGER AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    artist_id INTEGER NOT NULL,
    CONSTRAINT pk_albums PRIMARY KEY(album_id),
    CONSTRAINT fk_alar FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE songs(
    song_id INTEGER AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    album_id INTEGER NOT NULL,
    CONSTRAINT pk_songs PRIMARY KEY(song_id),
    CONSTRAINT fk_soal_albums FOREIGN KEY (album_id) REFERENCES albums (album_id)
) engine = InnoDB;

CREATE TABLE songs_artists(
    song_id INTEGER,
    artist_id INTEGER,
    CONSTRAINT fk_soar_songs FOREIGN KEY (song_id) REFERENCES songs (song_id),
    CONSTRAINT fk_soar_artists FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
    CONSTRAINT pk_songs_artists PRIMARY KEY(song_id, artist_id)
) engine = InnoDB;

CREATE TABLE users_follows(
    user_id INTEGER,
    artist_id INTEGER,
    CONSTRAINT fk_usfo_users FOREIGN KEY (user_id) REFERENCES users (user_id),
    CONSTRAINT fk_usfo_artists FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
    CONSTRAINT pk_users_follows PRIMARY KEY (user_id, artist_id)
) engine = InnoDB;

CREATE TABLE users_songs_history(
    user_id INTEGER,
    song_id INTEGER,
    CONSTRAINT fk_ussohi_users FOREIGN KEY (user_id) REFERENCES users (user_id),
    CONSTRAINT fk_ussohi_songs FOREIGN KEY (song_id) REFERENCES songs (song_id),
    CONSTRAINT pk_users_songs_history PRIMARY KEY (user_id, song_id)
) engine = InnoDB;

INSERT INTO plans (plan, price) VALUES ("gratuito","0"), ("familiar","7.99"), ("universitário","5.99");

INSERT INTO users (name, age, plan_id) VALUES ("Thati", "23", "1"), ("Cintia", "35", "2"), ("Bill", "20", "3"), ("Roger", "45", "1");

INSERT INTO artists (name) VALUES ("Walter Phoenix"), ("Peter Strong"), ("Lance Day"), ("Freedie Shannon");

INSERT INTO albums (title, artist_id) VALUES ("Envious", "1"), ("Exuberant", "1"), ("Hallowed Steam", "2"), ("Incandescent", "3"), ("Temporary Culture", "4");

INSERT
	INTO
	songs (title, album_id)
VALUES ("Soul For Us", "1"),
("Reflections Of Magic", "1"),
("Dance With Her Own", "1"),
("Troubles Of My Inner Fire", "2"),
("Time Fireworks", "2"),
("Magic Circus", "3"),
("Honey, So Do I", "3"),
("Sweetie, Let's Go Wild", "3"),
("She Knows", "3"),
("Fantasy For Me", "4"),
("Celebration Of More", "4"),
("Rock His Everything", "4"),
("Home Forever", "4"),
("Diamond Power", "4"),
("Honey, Let's Be Silly", "4"),
("Thang Of Thunder", "5"),
("Words Of Her Life", "5"),
("Without My Streets", "5");

INSERT INTO users_songs_history (user_id, song_id) 
VALUES ("1", "1"),
("1", "6"),
("1", "14"),
("1", "16"),
("2", "13"),
("2", "17"),
("2", "2"),
("2", "15"),
("3", "4"),
("3", "16"),
("3", "6"),
("4", "3"),
("4", "18"),
("4", "11");

INSERT INTO users_follows (user_id, artist_id) VALUES ("1","1"), ("1","4"), ("1","3"), ("2","1"), ("2","3"), ("3","2"), ("3","3"), ("4","4");

INSERT INTO songs_artists (song_id, artist_id) 
VALUES ("1","1"),
("2","1"),
("3","1"),
("4","1"),
("5","1"),
("6","2"),
("7","2"),
("8","2"),
("9","2"),
("10","3"),
("11","3"),
("12","3"),
("13","3"),
("14","3"),
("15","3"),
("16","4"),
("17","4"),
("18","4");
