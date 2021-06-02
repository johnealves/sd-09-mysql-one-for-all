CREATE VIEW SpotifyClone.top_3_artistas AS
    SELECT 
        a.artist_name AS 'artista',
        COUNT(f.user_id) AS 'seguidores'
    FROM
        SpotifyClone.UserFollowing AS f
            INNER JOIN
        SpotifyClone.Artists AS a ON f.artist_id = a.artist_id
		GROUP BY 1
    ORDER BY 2 DESC, 1 ASC
    LIMIT 3;
