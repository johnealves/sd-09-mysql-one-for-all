DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(200))
BEGIN
SELECT A.artist_name AS artista, AL.album_name AS album
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.albums AS AL ON A.artist_id = AL.artist_id
WHERE A.artist_name = artist
ORDER BY album ASC;
END $$

DELIMITER $$;
