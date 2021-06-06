CREATE VIEW top_3_artistas AS
SELECT art.artist_name AS artista, COUNT(flw.artist_id) AS seguidores
FROM SpotifyClone.follows_artists AS flw
INNER JOIN SpotifyClone.artist AS art ON flw.artist_id = art.artist_id
GROUP BY art.artist_name ORDER BY 2 DESC , 1 ASC LIMIT 3;
