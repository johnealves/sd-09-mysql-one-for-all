USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
  SELECT A.`artist_name` AS `artista`, AL.`album_name` AS `album`
  FROM SpotifyClone.Albums AS AL
  INNER JOIN SpotifyClone.Artists AS A ON A.`artist_id` = AL.`artist_id` AND A.`artist_name` = artistName
  ORDER BY `album` ASC;
END $$
DELIMITER ;
