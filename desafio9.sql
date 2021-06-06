DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(200))
BEGIN
SELECT art.nome_artista AS `artista`, alb.nome_album AS album
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
WHERE art.nome_artista = nomeArtista
ORDER BY album ASC;
END $$

DELIMITER ;
