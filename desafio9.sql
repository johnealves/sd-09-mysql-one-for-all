DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
SELECT a.artist_name AS 'artista', ab.album_name AS 'album'
    FROM SpotifyClone.artists AS a
    INNER JOIN SpotifyClone.albuns AS ab ON a.artist_id = ab.artist_id
    WHERE a.artist_name = artist
    ORDER BY album;
END $$
DELIMITER ;
