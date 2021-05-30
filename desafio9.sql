DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
	SELECT
		art.artista_nome AS 'artista',
		alb.album AS 'album'
    FROM SpotifyClone.albums AS alb
    JOIN SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
    WHERE art.artista_nome = artist;
END $$

DELIMITER ;
