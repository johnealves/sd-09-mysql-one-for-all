CREATE VIEW perfil_artistas AS
SELECT
art.nome_artista AS artista,
alb.nome_album AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS sa ON sa.artista_id = art.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
