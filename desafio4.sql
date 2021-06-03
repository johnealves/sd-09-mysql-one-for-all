CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista AS 'artista', COUNT(sa.usuario_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.seguindo_artistas AS sa ON a.artista_id = sa.artista_id
    GROUP BY 1
    ORDER BY 2 DESC , 1
    LIMIT 3;
