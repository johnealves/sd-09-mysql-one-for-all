CREATE VIEW top_3_artistas AS
SELECT art.artista_nome AS 'artista', COUNT(seg.artista_id) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas seg 
INNER JOIN SpotifyClone.artistas art ON art.artista_id = seg.artista_id
GROUP BY art.artista_nome
ORDER BY 2 DESC, 1 ASC
LIMIT 3;
