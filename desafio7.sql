CREATE VIEW perfil_artistas AS
SELECT AR.artist_name AS artista, AL.album_name AS album, COUNT(*) AS seguidores
FROM SpotifyClone.artists AS AR
INNER JOIN SpotifyClone.albums AS AL ON AR.artist_id = AL.artist_id
INNER JOIN SpotifyClone.following_artist AS FA ON AR.artist_id = FA.artist_id
GROUP BY AL.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
