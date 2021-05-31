USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_do_artista VARCHAR(45))
BEGIN
-- INNER JOIN
-- SELECT
-- CONCAT(Ar.nome, ' ', Ar.sobrenome) AS artista,
-- Al.titulo AS album
-- FROM SpotifyClone.albuns AS Al
-- INNER JOIN SpotifyClone.artistas AS Ar ON Ar.artista_id = Al.artista_id
-- WHERE CONCAT(Ar.nome, ' ', Ar.sobrenome) = nome_do_artista
-- ORDER BY Al.titulo ASC;

-- SUBQUERIES
SELECT
(SELECT CONCAT(nome, ' ', sobrenome) FROM SpotifyClone.artistas WHERE artista_id = Al.artista_id) AS artista,
titulo As album
FROM SpotifyClone.albuns AS Al
ORDER BY titulo ASC
LIMIT 2;
END $$

DELIMITER ;

