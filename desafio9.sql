DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN param_artist VARCHAR(30))
BEGIN
  SELECT ar.artist_name AS artista,
    al.album_title AS album
  FROM SpotifyClone.artist AS ar
  INNER JOIN SpotifyClone.album AS al
  ON ar.artist_id = al.artist_id
  WHERE ar.artist_name = param_artist
  ORDER BY 2;
END $$
DELIMITER ;
