CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name AS 'artista',
        COUNT(f.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.user_following AS f
            INNER JOIN
        SpotifyClone.artists AS a ON f.artist_id = a.artist_id
    GROUP BY f.artist_id
    ORDER BY `seguidores` DESC , a.artist_name ASC
    LIMIT 3;
