CREATE VIEW cancoes_premium AS
    SELECT 
        t1.song AS nome, COUNT(t2.user_id) AS reproducoes
    FROM
        SpotifyClone.songs AS t1
            INNER JOIN
        SpotifyClone.history AS t2 ON t1.song_id = t2.song_id
            INNER JOIN
        SpotifyClone.users AS t3 ON t2.user_id = t3.user_id
    WHERE
        t3.plan_id IN (2 , 3)
    GROUP BY t1.song_id
    ORDER BY 1 ASC;
