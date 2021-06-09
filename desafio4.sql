CREATE VIEW top_3_artistas AS
SELECT
a.artista_nome AS 'artista',
COUNT(s.usuario_id) AS 'seguidores' 
FROM SpotifyClone.seguindo_artistas AS s
JOIN SpotifyClone.artistas AS a ON a.artista_id = s.artista_id
GROUP BY `artista`
ORDER BY 2 DESC, 1 ASC
LIMIT 3;
