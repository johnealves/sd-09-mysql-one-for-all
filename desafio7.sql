CREATE VIEW perfil_artistas AS
SELECT 
artists.name AS artista,
albums.name AS album,
COUNT(followers.user_id) AS seguidores
FROM
SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albums AS albums
ON albums.artist_id = artists.artist_id
INNER JOIN SpotifyClone.followers AS followers
ON followers.artist_id = artists.artist_id
GROUP BY 1, 2
ORDER BY 3 DESC, 1, 2
;
