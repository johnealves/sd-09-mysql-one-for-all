DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.`plan_table`(
    plan_name VARCHAR(20) NOT NULL PRIMARY KEY,
    plan_value DECIMAL(4, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.`user_table`(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL,
    user_age INT NOT NULL,
    plan_name VARCHAR(20) NOT NULL,
		FOREIGN KEY (plan_name)
			REFERENCES SpotifyClone.plan_table(plan_name)
) engine = InnoDB;

CREATE TABLE SpotifyClone.`artist_table`(
	artist_name VARCHAR(50) NOT NULL PRIMARY KEY
) engine = InnoDB;

CREATE TABLE SpotifyClone.`album_table`(
    album_name VARCHAR(50) NOT NULL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_name),
		FOREIGN KEY (artist_name)
			REFERENCES SpotifyClone.artist_table(artist_name)
) engine = InnoDB;

CREATE TABLE SpotifyClone.`songs_table`(
	song_name VARCHAR(50) NOT NULL PRIMARY KEY,
    album_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (album_id),
		FOREIGN KEY (album_id)
		REFERENCES SpotifyClone.album_table(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.`following_artist_table`(
	user_id INT AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, artist_name),
		FOREIGN KEY (user_id)
			REFERENCES SpotifyClone.user_table(user_id),
		FOREIGN KEY (artist_name)
				REFERENCES SpotifyClone.artist_table(artist_name)
) engine = InnoDB;

CREATE TABLE SpotifyClone.`history_table`(
	user_id INT NOT NULL,
    song_name VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, song_name),
		FOREIGN KEY (user_id)
			REFERENCES SpotifyClone.user_table(user_id),
		FOREIGN KEY (song_name)
			REFERENCES SpotifyClone.songs_table(song_name)
) engine = InnoDB;

INSERT INTO SpotifyClone.`plan_table` (plan_name, plan_value)
VALUES
  ("gratuito", 0),
  ("familiar", 7,99),
  ("universitário", 5,99);

INSERT INTO SpotifyClone.`user_table` (user_name, user_age, plan_name)
VALUES
  ("Thati", 23, "gratuito"),
  ("Cintia", 35, "familiar"),
  ("Bill", 20, "universitário"),
  ("Roger", 45, "gratuito");

INSERT INTO SpotifyClone.`artist_table` (artist_name)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");
  
INSERT INTO SpotifyClone.`album_table` (album_name, artist_name)
VALUES
  ("Envious", "Walter Phoenix"),
  ("Exuberant", "Walter Phoenix"),
  ("Hallowed Steam", "Peter Strong"),
  ("Incandescent", "Lance Day"),
  ("Temporary Culture", "Freedie Shannon");

INSERT INTO SpotifyClone.`songs_table` (song_name, album_id)
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

INSERT INTO SpotifyClone.`following_artists_table` (user_id, artist_name)
VALUES
  (1, "Walter Phoenix"),
  (1, "Freedie Shannon"),
  (1, "Lance Day"),
  (2, "Walter Phoenix"),
  (2, "Lance Day"),
  (3, "Peter Strong"),
  (3, "Walter Phoenix"),
  (4, "Freedie Shannon");

INSERT INTO SpotifyClone.`history_table` (user_id, song_name)
VALUES
  (1, "Soul For Us"),
  (1, "Magic Circus"),
  (1, "Diamond Power"),
  (1, "Thang Of Thunder"),
  (2, "Home Forever"),
  (2, "Words Of Her Life"),
  (2, "Reflections Of Magic"),
  (2, "Honey, Let's Be Silly"),
  (3, "Troubles Of My Inner Fire"),
  (3, "Thang Of Thunder"),
  (3, "Magic Circus"),
  (4, "Dance With Her Own"),
  (4, "Without My Streets"),
  (4, "Celebration Of More");
  