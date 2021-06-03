CREATE VIEW cancoes_premium AS
    SELECT 
        s.`name` AS `nome`, COUNT(*) AS `reproducoes`
    FROM
        SpotifyClone.songs AS s
            INNER JOIN
        SpotifyClone.historical_reproduction AS hr ON s.song_id = hr.song_id
            INNER JOIN
        SpotifyClone.users AS u ON hr.user_id = u.user_id
            INNER JOIN
        SpotifyClone.plans AS p ON p.plan_id = u.plan_id
    WHERE
        p.price > 0
    GROUP BY `nome`
    ORDER BY `nome`;
