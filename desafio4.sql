CREATE VIEW top_3_artistas AS
    SELECT 
        artist_name AS artista,
        (SELECT 
                COUNT(user_id)
            FROM
                spotifyclone.following_artists
            WHERE
                a.artist_id = following_artists.artist_id) AS seguidores
    FROM
        spotifyclone.following_artists f
            INNER JOIN
        spotifyclone.artists a ON f.artist_id = a.artist_id
    GROUP BY 1
    ORDER BY 2 DESC , 1 ASC LIMIT 3;
