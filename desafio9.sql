DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
	SELECT
		ar.nome AS artista,
		a.album AS album
    FROM SpotifyClone.albuns AS a
    JOIN SpotifyClone.artistas AS ar ON a.artista_id = ar.artista_id
    WHERE ar.nome = artist;
END $$

DELIMITER ;
