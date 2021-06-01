USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistaName VARCHAR(20))
BEGIN
SELECT art.artista_nome AS artista, alb.album_nome AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
WHERE art.artista = 'Walter Phoenix' ORDER BY 2 ASC;
END $$

DELIMITER ;
