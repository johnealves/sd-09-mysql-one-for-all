CREATE VIEW top_3_artistas AS
SELECT a.artista AS 'artista',
(SELECT COUNT(sa.artista_id))
 AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindoArtistas AS sa
ON a.artista_id = sa.artista_id
GROUP BY a.artista
ORDER BY 2 DESC, artista ASC
LIMIT 3;