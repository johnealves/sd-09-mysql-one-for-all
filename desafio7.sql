CREATE VIEW perfil_artistas AS
SELECT art.artista_nome AS 'artista', alb.album_nome AS 'album', COUNT(seg.usuario_id) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas seg 
INNER JOIN SpotifyClone.artistas art ON art.artista_id = seg.artista_id
INNER JOIN SpotifyClone.album alb ON art.artista_id = alb.artista_id
GROUP BY art.artista_id, alb.album_id
ORDER BY 3 DESC, 1 ASC, 2 ASC;
