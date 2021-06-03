USE SpotifyClone;

CREATE VIEW top_3_artistas AS
SELECT
    a.artista,
    COUNT(sa.artista_id) AS `seguidores`
FROM
    artista AS a
INNER JOIN
	seguindo_artistas AS sa
ON sa.artista_id = a.id
GROUP BY a.artista
ORDER BY `seguidores` DESC, a.artista
LIMIT 3
