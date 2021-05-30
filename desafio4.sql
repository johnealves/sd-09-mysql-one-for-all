CREATE VIEW top_3_artistas
AS SELECT
T2.nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.Seguindo AS T1
INNER JOIN SpotifyClone.Artista AS T2
ON T1.artista_id = T2.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
