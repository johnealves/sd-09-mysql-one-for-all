CREATE VIEW perfil_artistas AS
SELECT art.artista_nome AS `artista`,
alb.album_nome AS `album`,
(
SELECT COUNT(flw.usuario_id)
FROM SpotifyClone.artista_seguidores AS flw
WHERE flw.artista_id = art.artista_id
) AS `seguidores`
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.album_artista AS alb ON alb.artista_id = art.artista_id
ORDER BY `seguidores` DESC, `artista` ASC;
