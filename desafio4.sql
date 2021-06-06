CREATE VIEW top_3_artistas AS
SELECT
a.nome_artista AS `artista`,
COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindo_artista AS sa ON a.artista_id = sa.artista_id
GROUP BY a.artista_id
ORDER BY seguidores DESC, `artista` ASC
LIMIT 3;
