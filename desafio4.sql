CREATE VIEW top_3_artistas AS
SELECT art.artista_nome AS artista, COUNT(flw.usuario_id) AS seguidores FROM SpotifyClone.artista_seguidores AS flw
INNER JOIN SpotifyClone.artistas AS art ON flw.artista_id = art.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` LIMIT 3;
