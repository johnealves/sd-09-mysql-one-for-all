USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_NAME VARCHAR(30))
BEGIN
SELECT art.artist_name AS artista, alb.album_name AS album
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
WHERE art.artist_name = 'Walter Phoenix' ORDER BY 2 ASC;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
