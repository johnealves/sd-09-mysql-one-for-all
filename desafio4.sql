CREATE VIEW top_3_artistas AS
    SELECT 
        a.name AS 'artista', COUNT(ua.user_id) AS 'seguidores'
    FROM
        SpotifyClone.artist AS a
            JOIN
        SpotifyClone.user_artist AS ua ON ua.artist_id = a.artist_id
    GROUP BY a.name
    ORDER BY COUNT(ua.user_id) DESC , a.name
    LIMIT 3;
