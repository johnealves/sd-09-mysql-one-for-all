DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artista VARCHAR(50))
BEGIN
  SELECT
    artista.artista,
    album.album
  FROM
    SpotifyClone.album
      INNER JOIN SpotifyClone.artista ON artista.id = album.artista_id
      WHERE artista.artista = artista
  ORDER BY album;
END $$

DELIMITER ;
