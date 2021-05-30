CREATE VIEW perfil_artistas AS
SELECT art.nome AS artista,
alb.nome AS album,
COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.Seguindo AS seg
ON art.artista_id = seg.artista_id
GROUP BY seg.artista_id, alb.nome
ORDER BY seguidores DESC, artista, album;
