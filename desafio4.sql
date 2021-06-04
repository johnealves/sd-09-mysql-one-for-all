CREATE VIEW top_3_artistas
AS SELECT a.nome AS 'artista', COUNT(*) AS 'seguidores'
FROM usuario_seguindo_artistas s
INNER JOIN artistas a ON a.artista_id = s.artista_id
GROUP BY a.nome
ORDER BY COUNT(*) DESC, a.nome
LIMIT 3;
