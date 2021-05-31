CREATE VIEW top_3_artistas AS
SELECT t2.artist AS artista, COUNT(t1.artist_id) AS seguidores
FROM SpotifyClone.followers AS t1
INNER JOIN SpotifyClone.artists AS t2 ON t1.artist_id = t2.artist_id
GROUP BY t2.artist ORDER BY 2 DESC , 1 ASC LIMIT 3;
