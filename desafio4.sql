CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name AS artista, COUNT(f.artist_id) AS seguidores
    FROM
        SpotifyClone.`following` AS f
            INNER JOIN
        SpotifyClone.artist AS a ON f.artist_id = a.artist_id
    GROUP BY a.artist_id
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
