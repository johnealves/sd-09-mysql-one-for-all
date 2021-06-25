USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(20))
BEGIN
SELECT t1.artist AS artista, t2.album AS album
FROM SpotifyClone.artists AS t1
INNER JOIN SpotifyClone.albums AS t2 ON t1.artist_id = t2.artist_id
WHERE t1.artist = 'Walter Phoenix' ORDER BY 2 ASC;
END $$

DELIMITER ;
