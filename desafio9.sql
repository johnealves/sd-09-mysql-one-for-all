USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(30))
BEGIN
	SELECT 
		art.artista AS artista,
        alb.album AS album
	FROM Album AS alb
	INNER JOIN Artista AS art ON art.artista_id = alb.artista_id
	WHERE art.artista = nome_artista
    ORDER BY alb.album;
END $$

DELIMITER ;
