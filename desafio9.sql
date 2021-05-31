DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(255))
BEGIN
SELECT artistas.nome AS artista,
albuns.nome AS album
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns
ON artistas.artista_id = albuns.artista_id
WHERE artistas.nome = artista;
END $$
DELIMITER ;