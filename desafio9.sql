USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome varchar(255))
BEGIN
	SELECT
    artista as artista,
    album as album
	FROM
    SpotifyClone.artistas as artistas,
    SpotifyClone.albuns as albuns
	WHERE
    artistas.artista_id = albuns.artista_id and artistas.artista = nome;
END $$
DELIMITER ;
