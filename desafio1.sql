-- SE EXISTIR DELETA A BASE DE DADOS
DROP DATABASE IF EXISTS `SpotifyClone`;
-- CRIA A BASE DE DADOS
CREATE DATABASE `SpotifyClone`;
USE `SpotifyClone`;

-- CRIA TABELA PLANO
CREATE TABLE `plans`(
	plan_id INT PRIMARY KEY AUTO_INCREMENT,
    `description` VARCHAR(100) NOT NULL,
    `value` DECIMAL(5,2) NOT NULL
)engine = InnoDB;

-- CRIA TABELA USUÁRIO
CREATE TABLE `users` (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
)engine = InnoDB;

-- CRIA TABELA ARTISTAS
CREATE TABLE `artists` (
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL
)engine = InnoDB;
    
-- CRIA TABELA ALBUNS
CREATE TABLE `albuns` (
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)engine = InnoDB;

-- CRIA TABELA CANCOES
CREATE TABLE `songs` (
	song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(50) NOT NULL,
    album_id INT,
    artist_id INT,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)engine = InnoDB;

-- CRIA TABELA HISTÓRICO
CREATE TABLE `historic` (
	user_id INT ,
    song_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
     CONSTRAINT PRIMARY KEY(user_id, song_id)
)engine = InnoDB;
    
-- CRIA TABELA SEGUINDO 
CREATE TABLE `following` (
	user_id INT,
    artist_id INT,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)engine = InnoDB; 
    
-- INSERE DADOS NA TABELA 'planos'
INSERT INTO `plans` (`description`, `value`) VALUES
	("gratuito", 0.00),
    ("familiar", 7.99),
    ("universitário", 5.99);

-- INSERE DADOS NA TABELA 'usuarios'
INSERT INTO `users` (user_name, age, plan_id) VALUES
	("Thati", 23, 1),
    ("Cintia", 35, 2),
    ("Bill", 20, 3),
    ("Roger", 45, 1);
    
-- INSERE DADOS NA TABELA 'artistas'
INSERT INTO `artists` (artist_name) VALUES
	("Walter Phoenix"),
    ("Peter Strong"),
    ("Lance Day"),
    ("Freedie Shannon");

-- INSERE DADOS NA TABELA 'albuns'
INSERT INTO `albuns` (album_name, artist_id) VALUES
	("Envious", 1),
    ("Exuberant", 1),
    ("Hallowed Steam", 2),
    ("Incandescent", 3),
    ("Temporary Culture", 4);

-- INSERE DADOS NA TABELA 'cancoes'
INSERT INTO `songs` (song_name, album_id, artist_id) VALUES
	("Soul For Us", 1, 1),
    ("Reflections Of Magic", 1, 1),
    ("Dance With Her Own", 1, 1),
    ("Troubles Of My Inner Fire", 2, 1),
    ("Time Fireworks", 2, 1),
    ("Magic Circus", 3, 2),
    ("Honey, So Do I", 3, 2),
    ("Sweetie, Let's Go Wild", 3, 2),
    ("She Knows", 3, 2),
    ("Fantasy For Me", 4, 3),
    ("Celebration Of More", 4, 3),
    ("Rock His Everything", 4, 3),
    ("Home Forever", 4, 3),
    ("Diamond Power",  4, 3),
    ("Honey, Let's Be Silly", 4, 3),
    ("Thang Of Thunder", 5, 4),
    ("Words Of Her Life", 5, 4),
    ("Without My Streets", 5, 4);

-- INSERE DADOS NA TABELA 'historico'
INSERT INTO `historic` (user_id, song_id) VALUES
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

-- INSERE DADOS NA TABELA 'seguindo'
INSERT INTO `following` (user_id, artist_id) VALUES
	(1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);