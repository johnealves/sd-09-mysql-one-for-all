CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS 'artista', COUNT(f.artist_id) AS 'seguidores' FROM SpotifyClone.followers AS f
INNER JOIN SpotifyClone.artists AS a
ON a.artist_id = f.artist_id
GROUP BY f.artist_id
ORDER BY `seguidores` DESC, `artista` LIMIT 3;
