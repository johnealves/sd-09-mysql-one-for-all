USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS artista,
COUNT(s.seguir_id) AS seguidores
FROM SpotifyClone.seguindo_artistas AS s
INNER JOIN SpotifyClone.artistas AS a ON s.artista_id = a.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista;
