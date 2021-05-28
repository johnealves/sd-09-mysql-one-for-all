USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN selected_artist VARCHAR(30))
BEGIN
SELECT
t.name AS artista,
a.name AS album
FROM SpotifyClone.artists AS t
INNER JOIN SpotifyClone.albums AS a
ON t.artist_id = a.artist_id
WHERE t.name = selected_artist
ORDER BY album;
END$$
DELIMITER ;
