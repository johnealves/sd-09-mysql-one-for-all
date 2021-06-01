DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
	SELECT
		ARTISTA.artista_name AS 'artista',
		ALBUM.album_name AS 'album'
    FROM SpotifyClone.album AS ALBUM
    JOIN SpotifyClone.artista AS ARTISTA ON ALBUM.artista_id = ARTISTA.artista_id
    WHERE ARTISTA.artista_name = artista;
END $$

DELIMITER ;