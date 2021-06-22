DROP DATABASE IF EXISTS `SpotifyClone`;
CREATE DATABASE IF NOT EXISTS `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plano` (
  `plano_id` TINYINT NOT NULL AUTO_INCREMENT,
  `plano` VARCHAR(25) NOT NULL,
  `valor` DECIMAL(4, 2) NOT NULL,
  PRIMARY KEY(`plano_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista` (
  `artista_id` INT NOT NULL AUTO_INCREMENT,
  `artista` VARCHAR(25) NOT NULL,
  PRIMARY KEY(`artista_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`album` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `album` VARCHAR(50) NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY(`album_id`),
  CONSTRAINT `fk_album_artista`
    FOREIGN KEY(`artista_id`)
    REFERENCES `SpotifyClone`.`artista` (`artista_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`musica` (
  `musica_id` INT NOT NULL AUTO_INCREMENT,
  `musica` VARCHAR(50) NOT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY(`musica_id`),
  CONSTRAINT `fk_musica_album`
    FOREIGN KEY(`album_id`)
    REFERENCES `SpotifyClone`.`album` (`album_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuario` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(25) NOT NULL,
  `idade` TINYINT NOT NULL,
  `plano_id` TINYINT NOT NULL,
  PRIMARY KEY(`usuario_id`),
  CONSTRAINT `fk_usuario_plano`
    FOREIGN KEY(`plano_id`)
    REFERENCES `SpotifyClone`.`plano` (`plano_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historico_de_reproducao` (
  `usuario_id` INT NOT NULL,
  `musica_id` INT NOT NULL,
  PRIMARY KEY(`usuario_id`, `musica_id`),
  CONSTRAINT `fk_historico_usuario`
    FOREIGN KEY(`usuario_id`)
    REFERENCES `SpotifyClone`.`usuario` (`usuario_id`),
  CONSTRAINT `fk_historico_musica`
    FOREIGN KEY(`musica_id`)
    REFERENCES `SpotifyClone`.`musica` (`musica_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista_seguido` (
  `usuario_id` INT NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY(`usuario_id`, `artista_id`),
  CONSTRAINT `fk_artista_seguido_usuario`
    FOREIGN KEY(`usuario_id`)
    REFERENCES `SpotifyClone`.`usuario` (`usuario_id`),
  CONSTRAINT `fk_artista_seguido_artista`
    FOREIGN KEY(`artista_id`)
    REFERENCES `SpotifyClone`.`artista` (`artista_id`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `plano` (`plano`, `valor`) VALUES ('gratuito', 0);
INSERT INTO `plano` (`plano`, `valor`) VALUES ('familiar', 7.99);
INSERT INTO `plano` (`plano`, `valor`) VALUES ('universitário', 5.99);

INSERT INTO `artista` (`artista`) VALUES ('Walter Phoenix');
INSERT INTO `artista` (`artista`) VALUES ('Peter Strong');
INSERT INTO `artista` (`artista`) VALUES ('Lance Day');
INSERT INTO `artista` (`artista`) VALUES ('Freedie Shannon');

INSERT INTO `album` (`album`, `artista_id`) VALUES ('Envious', 1);
INSERT INTO `album` (`album`, `artista_id`) VALUES ('Exuberant', 1);
INSERT INTO `album` (`album`, `artista_id`) VALUES ('Hallowed Steam', 2);
INSERT INTO `album` (`album`, `artista_id`) VALUES ('Incandescent', 3);
INSERT INTO `album` (`album`, `artista_id`) VALUES ('Temporary Culture', 4);

INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Soul For Us', 1);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Reflections Of Magic', 1);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Dance With Her Own', 1);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Troubles Of My Inner Fire', 2);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Time Fireworks', 2);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Magic Circus', 3);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Honey, So Do I', 3);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Sweetie, Let\'s Go Wild', 3);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('She Knows', 3);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Fantasy For Me', 4);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Celebration Of More', 4);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Rock His Everything', 4);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Home Forever', 4);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Diamond Power', 4);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Honey, Let\'s Be Silly', 4);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Thang Of Thunder', 5);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Words Of Her Life', 5);
INSERT INTO `musica` (`musica`, `album_id`) VALUES ('Without My Streets', 5);

INSERT INTO `usuario` (`usuario`, `idade`, `plano_id`) VALUES ('Thati', 23, 1);
INSERT INTO `usuario` (`usuario`, `idade`, `plano_id`) VALUES ('Cintia', 35, 2);
INSERT INTO `usuario` (`usuario`, `idade`, `plano_id`) VALUES ('Bill', 20, 3);
INSERT INTO `usuario` (`usuario`, `idade`, `plano_id`) VALUES ('Roger', 45, 1);

INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (1, 1);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (1, 6);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (1, 14);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (1, 16);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (2, 13);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (2, 17);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (2, 2);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (2, 15);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (3, 4);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (3, 16);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (3, 6);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (4, 3);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (4, 18);
INSERT INTO `historico_de_reproducao` (`usuario_id`, `musica_id`) VALUES (4, 11);

INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (1, 1);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (1, 4);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (1, 3);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (2, 1);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (2, 3);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (3, 2);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (3, 1);
INSERT INTO `artista_seguido` (`usuario_id`, `artista_id`) VALUES (4, 4);