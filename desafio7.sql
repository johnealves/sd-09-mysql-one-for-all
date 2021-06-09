CREATE VIEW perfil_artistas AS
SELECT
art.artista_nome AS 'artista',
alb.album_titulo AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas AS s
JOIN SpotifyClone.artistas AS art ON art.artista_id = s.artista_id
JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores`DESC, `artista` ASC, `album` ASC;
