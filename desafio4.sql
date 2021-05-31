CREATE VIEW top_3_artistas AS
    SELECT 
        artist_name AS artista,
        (SELECT 
                COUNT(user_id)
            FROM
                SpotifyClone.following_artists
            WHERE
                SpotifyClone.artists.artist_id = following_artists.artist_id) AS seguidores
    FROM
        SpotifyClone.artists
    GROUP BY artist_name, artist_id
    ORDER BY 2 DESC , 1 ASC
    LIMIT 3;
