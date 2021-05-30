CREATE VIEW `top_3_artistas` AS
SELECT art.artista_nome AS `artista`,
COUNT(art.artista_nome) AS `seguidores`
FROM SpotifyClone.seguindo_artista AS seg
JOIN SpotifyClone.artistas AS art ON seg.artista_id = art.artista_id
GROUP BY art.artista_nome
ORDER BY COUNT(art.artista_nome) DESC, art.artista_nome ASC
LIMIT 3;
