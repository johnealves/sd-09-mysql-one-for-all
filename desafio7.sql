CREATE VIEW perfil_artistas AS
SELECT
A.artist_name AS artista,
AB.album_name AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.spotify_artists AS A
INNER JOIN SpotifyClone.spotify_albums AS AB ON A.artist_id = AB.artist_id
INNER JOIN SpotifyClone.followed_artists AS FA ON FA.artist_id = A.artist_id
GROUP BY AB.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;