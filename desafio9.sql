DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(200))
BEGIN
SELECT
A.artist_name AS artista,
AB.album_name AS album
FROM SpotifyClone.spotify_artists AS A
INNER JOIN SpotifyClone.spotify_albums AS AB ON A.artist_id = AB.artist_id
WHERE A.artist_name = artistName
ORDER BY album ASC;
END $$

DELIMITER ;