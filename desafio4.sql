CREATE VIEW top_3_artistas AS
SELECT art.artist AS artista, COUNT(flw.artist_id) AS seguidores
FROM SpotifyClone.followers AS flw
INNER JOIN SpotifyClone.artists AS art ON flw.artist_id = art.artist_id
GROUP BY art.artist ORDER BY 2 DESC , 1 ASC LIMIT 3;