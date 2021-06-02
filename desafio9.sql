DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
SELECT 
    art.artist_name AS 'artista', alb.album_name AS 'album'
FROM
    SpotifyClone.Albuns AS alb
        INNER JOIN
    SpotifyClone.Artists AS art ON alb.artist_id = art.artist_id
WHERE
    artist_name = artistName;
END $$

DELIMITER ;
