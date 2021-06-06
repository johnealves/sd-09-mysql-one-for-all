
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN n_artista VARCHAR(50))
BEGIN
  SELECT CONCAT(a.`name`, ' ', a.last_name) AS 'artista', al.album_name AS 'album'
   FROM SpotifyClone.stars AS a
   INNER JOIN SpotifyClone.album AS al
   ON a.stars_id = al.stars_id
   WHERE a.`name` = n_artista
   ORDER BY album, artista ASC;
END $$

DELIMITER ;