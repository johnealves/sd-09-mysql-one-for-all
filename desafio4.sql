CREATE VIEW top_3_artistas AS
SELECT 
t.name AS artista,
count(*) AS seguidores
FROM SpotifyClone.following_artists AS f
INNER JOIN SpotifyClone.artists AS t
ON f.artist_id = t.artist_id
GROUP BY t.name
ORDER BY seguidores DESC, artista LIMIT 3;
