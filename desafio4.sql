CREATE VIEW top_3_artistas AS 
SELECT 
    artists.name AS 'artista',
    COUNT(*) AS 'seguidores'
FROM
    SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.followers AS followers
ON artists.artist_id = followers.artist_id
GROUP BY 1
ORDER BY 2 DESC, 2
LIMIT 3
;