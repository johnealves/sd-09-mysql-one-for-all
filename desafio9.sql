DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN p_artist VARCHAR(30))
BEGIN
  SELECT ar.nome_artista AS artista,
    al.titulo_album AS album
  FROM SpotifyClone.Artistas AS ar
  INNER JOIN SpotifyClone.Albuns AS al
  ON ar.artista_id = al.artista_id
  WHERE ar.nome_artista = p_artist
  ORDER BY 2;
END $$
DELIMITER ;
