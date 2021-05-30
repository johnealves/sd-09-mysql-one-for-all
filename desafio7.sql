CREATE VIEW `perfil_artistas` AS
SELECT art.artista_nome AS `artista`,
alb.album AS `album`,
(SELECT COUNT(seg.artista_id)
FROM spotifyclone.seguindo_artista AS seg
WHERE seg.artista_id = art.artista_id) AS `seguidores`
FROM spotifyclone.albums AS alb
JOIN spotifyclone.artistas AS art ON alb.artista_id = art.artista_id
ORDER BY 3 DESC, 1 ASC, 2 ASC;
