CREATE VIEW top_3_artistas AS
SELECT artistas.nome AS 'artista',
COUNT(artistas.nome) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas AS seguidores
INNER JOIN SpotifyClone.artistas as artistas
ON seguidores.artista_id = artistas.artista_id
GROUP BY seguidores.artista_id
ORDER BY 2 DESC, 1 ASC
LIMIT 3;
