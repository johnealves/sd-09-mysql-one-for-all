CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS artista, COUNT(*) AS seguidores
FROM
SpotifyClone.artistas AS a
INNER JOIN
SpotifyClone.seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY a.artista_nome
ORDER BY seguidores DESC , artista
LIMIT 3;
