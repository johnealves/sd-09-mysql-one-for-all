DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(50))
BEGIN
	SELECT
		A.artista AS 'artista',
    AB.album AS 'album'
	FROM SpotifyClone.artistas AS A
  INNER JOIN SpotifyClone.albuns AS AB ON AB.artista_id = A.artista_id AND A.artista = nome;
END $$
DELIMITER ;
