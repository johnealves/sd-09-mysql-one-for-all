CREATE VIEW top_3_artistas AS
SELECT 
A.artista AS artista,
COUNT(*) AS seguidores 
FROM SpotifyClone.Seguidores AS S 
INNER JOIN SpotifyClone.Artistas AS A ON S.artista_id = A.artista_id
GROUP BY S.artista_id 
ORDER BY seguidores DESC, artista ASC 
LIMIT 3;
