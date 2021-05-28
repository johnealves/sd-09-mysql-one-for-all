-- CREATE VIEW perfil_artistas AS
SELECT
t.name AS artista,
a.name AS album,
s.seguidores AS seguidores
FROM SpotifyClone.artists AS t
INNER JOIN SpotifyClone.albums AS a
ON t.artist_id = a.artist_id
INNER JOIN (
SELECT t.name AS artista, count(*) AS seguidores
FROM SpotifyClone.following_artists AS f
INNER JOIN SpotifyClone.artists AS t
ON f.artist_id = t.artist_id
GROUP BY t.name
) AS s
ON t.name = s.artista
ORDER BY seguidores DESC, artista ASC, album ASC;
