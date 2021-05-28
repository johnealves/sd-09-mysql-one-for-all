DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
	plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano_nome VARCHAR(30) NOT NULL,
    plano_valor DECIMAL(3,2) NOT NULL
);

CREATE TABLE usuarios(
	usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    usuario_nome VARCHAR(30) NOT NULL,
    usuario_idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY(plano_id) REFERENCES planos (plano_id)
);

CREATE TABLE artistas (
	artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(50) NOT NULL
);

CREATE TABLE album_artista (
	album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    album_nome VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE cancoes (
	cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cancao_nome VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album_artista (album_id)
);

CREATE TABLE cancao_artista(
	cancao_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
    CONSTRAINT PRIMARY KEY (artista_id, cancao_id)
);

CREATE TABLE artista_seguidores (
    artista_id INT NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    CONSTRAINT PRIMARY KEY (artista_id, usuario_id)
);

CREATE TABLE usuario_historico (
	usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id),
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id)
);

INSERT INTO artistas(artista_nome) VALUES
	("Walter Phoenix"),
    ("Peter Strong"),
    ("Lance Day"),
    ("Freedie Shannon");
    
INSERT INTO album_artista(album_nome, artista_id) VALUES
	("Envious", 1),
    ("Exuberant", 1),
    ("Hallowed Steam", 2),
    ("Incandescent", 3),
    ("Temporary Culture", 4);
    
INSERT INTO planos (plano_nome, plano_valor) VALUES
	("gratuito", 0.00),
    ("familiar", 7.99),
    ("universitário", 5.99);
    
INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id) VALUES
	("Thati", 23, 1),
    ("Cintia", 35, 2),
    ("Bill", 20, 3),
    ("Roger", 45, 1);
    
INSERT INTO cancoes (cancao_nome, album_id) VALUES
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
    
INSERT INTO cancao_artista(cancao_id, artista_id) VALUES
	(1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 2),
    (7, 2),
    (8, 2),
    (9, 2),
    (10, 3),
    (11, 3),
    (12, 3),
    (13, 3),
    (14, 3),
    (15, 3),
    (16, 4),
    (17, 4),
    (18, 4);
    
INSERT INTO usuario_historico (usuario_id, cancao_id) VALUES
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
    
INSERT INTO artista_seguidores (artista_id, usuario_id) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 3),
	(3, 1),
	(3, 2),
	(4, 1),
	(4, 4);
 