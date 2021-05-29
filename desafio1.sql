DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `PLANS`(
    `PLAN_ID`INT PRIMARY KEY AUTO_INCREMENT,
    `PLAN_TYPE` VARCHAR(50),
    `PLAN_VALUE` DOUBLE
) engine = InnoDB;
INSERT INTO PLANS(PLAN_TYPE, PLAN_VALUE)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE `ARTISTS`(
    `ARTIST_ID` INT PRIMARY KEY AUTO_INCREMENT,
    `ARTIST_NAME` VARCHAR(50)
) engine = InnoDB;
INSERT INTO ARTISTS (ARTIST_ID, ARTIST_NAME)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

CREATE TABLE `ALBUMS`(
    `ALBUM_ID` INT PRIMARY KEY AUTO_INCREMENT,
    `ALBUM_NAME` VARCHAR(50),
    `ARTIST_ID` INT NOT NULL,
    FOREIGN KEY (ARTIST_ID) REFERENCES ARTISTS (ARTIST_ID)
) engine = InnoDB;
INSERT INTO ALBUMS (ALBUM_ID, ALBUM_NAME, ARTIST_ID)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);

CREATE TABLE `SONGS`(
    `SONG_ID` INT PRIMARY KEY AUTO_INCREMENT,
    `SONG_NAME` VARCHAR(50),
    `ALBUM_ID` INT NOT NULL,
    `ARTIST_ID` INT NOT NULL,
    FOREIGN KEY (ALBUM_ID) REFERENCES ALBUMS (ALBUM_ID),
    FOREIGN KEY (ARTIST_ID) REFERENCES ARTISTS (ARTIST_ID)
) engine = InnoDB;
 INSERT INTO SONGS (SONG_ID, SONG_NAME, ARTIST_ID, ALBUM_ID)
VALUES
  (1, "Soul For Us", 1, 1),
  (2, "Reflections Of Magic", 1, 1),
  (3, "Dance With Her Own", 1, 1),
  (4, "Troubles Of My Inner Fire", 1, 2),
  (5, "Time Fireworks", 1, 2),
  (6, "Magic Circus", 2, 3),
  (7, "Honey, So Do I", 2, 3),
  (8, "Sweetie, Let's Go Wild", 2, 3),
  (9, "She Knows", 2, 3),
  (10, "Fantasy For Me", 3, 4),
  (11, "Celebration Of More", 3, 4),
  (12, "Rock His Everything",3, 4),
  (13, "Home Forever", 3, 4),
  (14, "Diamond Power", 3, 4),
  (15, "Honey, Let's Be Silly", 3, 4),
  (16, "Thang Of Thunder", 4, 5),
  (17, "Words Of Her Life", 4, 5),
  (18, "Without My Streets", 4, 5);

CREATE TABLE `USERS`(
    `USER_ID` INT PRIMARY KEY AUTO_INCREMENT,
    `NAME` VARCHAR(50) NOT NULL,
    `AGE` INT NOT NULL,
    `PLAN_ID` INT NOT NULL,
    FOREIGN KEY (`PLAN_ID`) REFERENCES `PLANS`(`PLAN_ID`)
) engine = InnoDB;
INSERT INTO `USERS`(`NAME`, `AGE`, `PLAN_ID`)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill',20, 3),
  ('Roger',45, 1);

CREATE TABLE `USER_HISTORY`(
    `SONG_ID` INT NOT NULL,
    `USER_ID` INT NOT NULL,
    FOREIGN KEY (SONG_ID) REFERENCES SONGS (SONG_ID),
    FOREIGN KEY (USER_ID) REFERENCES USERS (USER_ID),
    CONSTRAINT PRIMARY KEY(`SONG_ID`, `USER_ID`)
) engine = InnoDB;
INSERT INTO USER_HISTORY(SONG_ID, USER_ID)
VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);

CREATE TABLE `FOLLOW`(
    `USER_ID` INT NOT NULL,
    `ARTIST_ID` INT NOT NULL,
	CONSTRAINT PRIMARY KEY(`USER_ID`, `ARTIST_ID`),
    FOREIGN KEY (ARTIST_ID) REFERENCES ARTISTS (ARTIST_ID),
    FOREIGN KEY (USER_ID) REFERENCES USERS (USER_ID)
) engine = InnoDB;
INSERT INTO FOLLOW (USER_ID, ARTIST_ID)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  