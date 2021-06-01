CREATE VIEW top_3_artistas AS
SELECT  artista.artista AS `artista`,
        COUNT(artista_seguido.artista_id) AS `seguidores`
FROM SpotifyClone.artista
JOIN SpotifyClone.artista_seguido ON artista.artista_id = artista_seguido.artista_id
GROUP BY `artista`
ORDER BY  `seguidores` DESC,
          `artista`
LIMIT 3;
        