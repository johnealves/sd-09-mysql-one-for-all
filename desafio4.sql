CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista AS 'artista', COUNT(ar.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.artista_seguido AS ar
            INNER JOIN
        SpotifyClone.artista AS a ON a.artista_id = ar.artista_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;