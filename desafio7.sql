CREATE VIEW perfil_artistas AS
SELECT s.singer_name AS artista, a.album_name AS album, COUNT(*) AS seguidores
FROM SpotifyClone.album as a
INNER JOIN SpotifyClone.singer AS s ON s.singer_id = a.singer_id
INNER JOIN SpotifyClone.follow_history AS fh ON fh.singer_id = a.singer_id
GROUP BY s.singer_name, a.album_name
ORDER BY seguidores DESC, artista, album;
