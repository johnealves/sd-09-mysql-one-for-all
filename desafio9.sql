USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(25))
BEGIN
SELECT art.artista AS artista,
alb.album
FROM artistas as art
INNER JOIN albuns as alb
ON art.artista_id = alb.artista_id
WHERE art.artista = nome
ORDER BY alb.album;
END $$

DELIMITER ;