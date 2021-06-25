DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT art.artist AS artista,
    alb.album AS album
  FROM album alb
    INNER JOIN artist art ON alb.artist_id = art.artist_id
  WHERE art.artist = nome
  ORDER BY album;
END $$

DELIMITER ;
