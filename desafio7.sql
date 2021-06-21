CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
	art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(f.id_user) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
ON alb.artist = art.id_artist
INNER JOIN SpotifyClone.following AS f
ON art.id_artist = f.id_artist
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
