DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artist VARCHAR(80))
BEGIN
	SELECT
		art.artist_name AS artista,
        alb.album_name AS album
	FROM SpotifyClone.artists AS art
    INNER JOIN SpotifyClone.albums AS alb
    ON art.artist_name = artist AND alb.artist = art.id_artist;
END $$

DELIMITER ;
