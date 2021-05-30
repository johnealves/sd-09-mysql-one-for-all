-- INNER JOIN
-- CREATE VIEW top_3_artistas AS
-- SELECT CONCAT(A.nome, ' ', A.sobrenome) AS artista, COUNT(*) AS seguidores FROM SpotifyClone.usuario_artista AS UA
-- INNER JOIN SpotifyClone.artistas AS A ON A.artista_id = UA.artista_id
-- GROUP BY artista
-- ORDER BY seguidores DESC, artista ASC
-- LIMIT 3;

-- subquerie
CREATE VIEW top_3_artistas AS
SELECT
	(SELECT CONCAT(nome, ' ', sobrenome) FROM SpotifyClone.artistas WHERE artista_id = UA.artista_id) AS artista,
    COUNT(*) AS seguidores
FROM usuario_artista AS UA
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
