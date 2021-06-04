CREATE VIEW perfil_artistas AS
SELECT art.artista,
alb.album,
(SELECT COUNT(s.artista_id)) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindoArtistas AS s
ON s.artista_id = art.artista_id
GROUP BY s.artista_id, alb.album
ORDER BY seguidores DESC, art.artista ASC, alb.album ASC;