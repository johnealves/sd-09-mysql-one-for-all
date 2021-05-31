CREATE VIEW top_3_artistas AS
    SELECT 
        artist_name AS artista,
        (SELECT 
                COUNT(user_id)
            FROM
                spotifyclone.following_artists
            WHERE
                spotifyclone.artists.artist_id = following_artists.artist_id) AS seguidores
    FROM
        spotifyclone.artists
    GROUP BY artist_name, artist_id
    ORDER BY 2 DESC , 1 ASC
    LIMIT 3;
