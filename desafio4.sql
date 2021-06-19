CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS 'artista', COUNT(usuario_id) AS 'seguidores' 
FROM SpotifyClone.Artistas a
INNER JOIN SpotifyClone.Seguidores_Artistas sa ON a.artista_id = sa.artista_id
GROUP BY sa.artista_id
ORDER BY COUNT(usuario_id) DESC, a.nome_artista
LIMIT 3;
