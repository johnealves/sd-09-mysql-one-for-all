CREATE VIEW top_3_artistas AS
    SELECT
        artistas.artista AS artista, COUNT(*) AS seguidores
    FROM
        SpotifyClone.artistas_seguidos AS seguidores
            INNER JOIN
        SpotifyClone.artistas AS artistas ON artistas.artista_id = seguidores.artista_id
    GROUP BY seguidores.artista_id
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
