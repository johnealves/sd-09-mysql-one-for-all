DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN 
SELECT 
AR.artista AS `artista`, 
AL.album AS `album` 
FROM SpotifyClone.Albuns AS AL 
INNER JOIN SpotifyClone.Artistas AS AR ON AL.artista_id = AR.artista_id 
WHERE AR.artista = nome_artista 
ORDER BY `album` ASC;
END $$
DELIMITER ;
