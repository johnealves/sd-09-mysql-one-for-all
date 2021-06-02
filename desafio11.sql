CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        s.song_name AS 'nome', COUNT(*) AS 'reproducoes'
    FROM
        (SELECT 
            user_id
        FROM
            SpotifyClone.Users
        WHERE
            plan_id IN (2 , 3)) AS u
            INNER JOIN
        SpotifyClone.ReproductionHistory AS r ON u.user_id = r.user_id
            INNER JOIN
        SpotifyClone.Songs AS s ON r.song_id = s.song_id
    GROUP BY 1
    ORDER BY 1 ASC;
