CREATE VIEW top_3_artistas AS
SELECT A.`artist_name` AS `artista`, COUNT(*) AS `seguidores`
FROM SpotifyClone.Artists AS A
INNER JOIN SpotifyClone.Following AS F ON F.artist_id = A.artist_id
GROUP BY A.artist_name
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
