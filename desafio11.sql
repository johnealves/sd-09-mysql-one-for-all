CREATE VIEW cancoes_premium AS
    SELECT 
        s.song_title AS 'nome', COUNT(*) AS 'reproducoes'
    FROM
        (SELECT 
            user_id
        FROM
            users
        WHERE
            plan_id IN (2 , 3)) AS u
            INNER JOIN
        reproduction_history AS r ON u.user_id = r.user_id
            INNER JOIN
        songs AS s ON r.song_id = s.song_id
    GROUP BY 1
    ORDER BY 1 ASC;
