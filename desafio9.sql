
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN `name` VARCHAR(40))
BEGIN
SELECT
CONCAT(stars.`name`, ' ', last_name) AS artista,
album.album_name AS album
FROM SpotifyClone.stars AS art
INNER JOIN SpotifyClone.album AS alb
ON art.stars_id = alb.stars_id
WHERE art.`name` = `name`
ORDER BY `album` ASC;
END $$

DELIMITER ;
