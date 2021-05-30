CREATE VIEW top_3_artistas AS
SELECT art.nome AS artista, COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.Seguindo AS seg
INNER JOIN SpotifyClone.Artistas AS art
ON art.artista_id = seg.artista_id
GROUP BY seg.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;