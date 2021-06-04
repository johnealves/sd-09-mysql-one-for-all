CREATE VIEW top_3_artistas AS SELECT 
    a.artista, COUNT(*) AS `seguidores`
FROM
    SpotifyClone.seguidores_por_artistas AS s,
    SpotifyClone.artistas AS a
WHERE
    (s.artista_id = a.artista_id)
GROUP BY a.artista
ORDER BY `seguidores` DESC , a.artista ASC
LIMIT 3;
