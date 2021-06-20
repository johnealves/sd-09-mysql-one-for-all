CREATE VIEW perfil_artistas AS
SELECT
a.artista_nome AS artista,
b.album_nome AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.seguindo AS s ON a.artista_id = s.artista_id
GROUP BY a.artista_nome, b.album_nome
ORDER BY seguidores DESC, artista;
