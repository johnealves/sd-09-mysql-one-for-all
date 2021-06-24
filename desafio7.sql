CREATE VIEW perfil_artistas AS
SELECT a.artista_nome AS artista,
ab.album_nome AS album,
COUNT(s.seguir_id) AS seguidores
FROM SpotifyClone.artistas as a
INNER JOIN SpotifyClone.albuns AS ab ON a.artista_id = ab.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s ON a.artista_id = s.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
