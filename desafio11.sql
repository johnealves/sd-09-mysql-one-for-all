CREATE VIEW cancoes_premium AS
    SELECT 
        s.name AS 'nome', COUNT(sh.user_id) AS 'reproducoes'
    FROM
        SpotifyClone.song AS s
            JOIN
        SpotifyClone.song_historic AS sh ON s.song_id = sh.song_id
            JOIN
        SpotifyClone.user AS u ON u.user_id = sh.user_id
    WHERE
        u.plan_id <> 1
    GROUP BY s.name
    ORDER BY s.name;
