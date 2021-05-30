DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(30))
BEGIN
SELECT art.artista_nome AS `artista`, alb.album_nome AS `album` FROM SpotifyClone.artistas AS art
INNER JOIN album_artista AS alb ON alb.artista_id = art.artista_id
WHERE art.artista_nome = nome;
END $$

DELIMITER ;
