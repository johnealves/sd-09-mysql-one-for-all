-- INNER JOIN E SUBQUERIES
CREATE VIEW perfil_artistas AS
SELECT
CONCAT(Ar.nome, ' ', Ar.sobrenome) AS artista,
Al.titulo AS album,
(SELECT COUNT(*) FROM SpotifyClone.usuario_artista WHERE artista_id = Al.artista_id GROUP BY artista_id) AS seguidores
FROM SpotifyClone.albuns AS Al
INNER JOIN SpotifyClone.artistas AS Ar ON Ar.artista_id = Al.artista_id
ORDER BY seguidores DESC, artista ASC;
