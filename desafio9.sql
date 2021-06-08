DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
	SELECT
		a.nome AS artista,
    al.titulo AS album
  FROM Artistas AS a
  INNER JOIN Albums AS al ON al.artista_id = a.artista_id
  WHERE a.nome = artista;
END
DELIMITER ;
