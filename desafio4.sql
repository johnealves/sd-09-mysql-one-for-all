CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
	art.artist_name AS artista,
    COUNT(f.id_user) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.following AS f
ON f.id_artist = art.id_artist
GROUP BY art.artist_name
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
