DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuario (
	id INTEGER NOT NULL PRIMARY KEY,
    usuario CHAR(20) NOT NULL,
    idade INT(20) NOT NULL,
    plano_id INTEGER NOT NULL
) engine = InnoDB;

CREATE TABLE plano (
	id INTEGER NOT NULL PRIMARY KEY,
    plano CHAR(20) NOT NULL,
    valor_plano FLOAT(2,10) NOT NULL
) engine = InnoDB;

CREATE TABLE artista (
	id INTEGER NOT NULL PRIMARY KEY,
    artista CHAR(20) NOT NULL
) engine = InnoDB;

CREATE TABLE musica (
	id INTEGER NOT NULL PRIMARY KEY,
    musica CHAR(20) NOT NULL,
    album_id INTEGER NOT NULL
) engine = InnoDB;

CREATE TABLE album (
	id INTEGER NOT NULL PRIMARY KEY,
    album CHAR(20) NOT NULL,
    artista_id INTEGER NOT NULL
) engine = InnoDB;

CREATE TABLE seguindo_artistas (
	usuario_id INTEGER NOT NULL,
    artista_id INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes (
	usuario_id INTEGER NOT NULL,
    musica_id INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, musica_id)
) engine = InnoDB;
