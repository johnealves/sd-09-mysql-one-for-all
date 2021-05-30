DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas (
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sobrenome VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE planos (
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(45) NOT NULL,
    valor DOUBLE NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios (
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE = InnoDB;

CREATE TABLE usuario_artista (
	usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id)
) ENGINE = InnoDB;

CREATE TABLE usuario_plano (
	usuario_id INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id),
    CONSTRAINT PRIMARY KEY (usuario_id, plano_id)
) ENGINE = InnoDB;

CREATE TABLE albuns (
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL, 
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

CREATE TABLE cancoes (
	cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) ENGINE = InnoDB;

CREATE TABLE usuario_cancao (
	usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id)
) ENGINE = InnoDB;

INSERT INTO artistas (nome, sobrenome)
	VALUES
		('Walter', 'Phoenix'),
        ('Peter', 'Strong'),
        ('Lance', 'Day'),
        ('Freedie', 'Shannon');
        
INSERT INTO planos (plano, valor)
	VALUES
		('gratuito', 0),
        ('universitário', 5.99),
        ('familiar', 7.99);
        
INSERT INTO usuarios (nome, idade, plano_id)
	VALUES
		('Thati', 23, 1),
        ('Cintia', 35, 3),
        ('Bill', 20, 2),
        ('Roger', 45, 1);
        
INSERT INTO usuario_artista (usuario_id, artista_id)
	VALUES
		(1, 1),
        (1, 4),
        (1, 3),
        (2, 1),
        (2, 3),
        (3, 2),
        (3, 1),
        (4, 4);
        
INSERT INTO usuario_plano (usuario_id, plano_id)
	VALUES
		(1, 1),
        (2, 3),
        (3, 2),
        (4, 1);
        
INSERT INTO albuns (titulo, artista_id)
	VALUES
		('Envious', 1),
        ('Exuberant', 1),
        ('Hallowed Steam', 2),
        ('Incandescent', 3),
        ('Temporary Culture', 4);


INSERT INTO cancoes (titulo, album_id)
	VALUES
		('Soul For Us', 1), -- 1
        ('Reflections Of Magic', 1), -- 2
        ('Dance With Her Own', 1), -- 3
        ('Troubles Of My Inner Fire', 2), -- 4
        ('Time Fireworks', 2), -- 5
        ('Magic Circus', 3), -- 6
        ('Honey, So Do I', 3), -- 7
        ("Sweetie, Let's Go Wild", 3), -- 8
        ('She Knows', 3), -- 9
        ('Fantasy For Me', 4), -- 10
        ('Celebration Of More', 4), -- 11
        ('Rock His Everything', 4), -- 12
        ('Home Forever', 4), -- 13
        ('Diamond Power', 4), -- 14
        ("Honey, Let's Be Silly", 4), -- 15
        ('Thang Of Thunder', 5), -- 16
        ('Words Of Her Life', 5), -- 17
        ('Without My Streets', 5); -- 18
	
    INSERT INTO usuario_cancao (usuario_id, cancao_id)
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
