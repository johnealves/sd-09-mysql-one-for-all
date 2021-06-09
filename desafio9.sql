DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(50))
BEGIN
  SELECT
  art.artista_nome AS 'artista',
  alb.album_titulo AS 'album'
  FROM SpotifyClone.albuns AS alb
  JOIN SpotifyClone.artistas AS art
  ON art.artista_id = alb.artista_id
  WHERE art.artista_nome = nomeArtista;
END $$

DELIMITER ;
