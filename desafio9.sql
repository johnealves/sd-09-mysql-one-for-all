DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome VARCHAR(255))
BEGIN
	SELECT a.artista AS 'artista', al.album AS 'album'
    FROM SpotifyClone.artistas AS a
    INNER JOIN SpotifyClone.albuns AS al
    ON a.artista_id = al.artista_id
    WHERE a.artista = nome
    ORDER BY 2;
END $$

DELIMITER ;
