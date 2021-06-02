CREATE VIEW cancoes_premium AS
    SELECT 
        s.song AS nome, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.songs AS s
    WHERE
        EXISTS( SELECT 
                *
            FROM
                SpotifyClone.history AS h
                    INNER JOIN
                SpotifyClone.users AS u ON u.usuario_id = h.usuario_id
                    AND u.plan_id IN (2 , 3)
            WHERE
                s.song_id = h.song_id)
    GROUP BY s.song
    ORDER BY s.song;
