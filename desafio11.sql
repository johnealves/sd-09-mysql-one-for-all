CREATE VIEW cancoes_premium AS
    SELECT 
        t.cancao AS 'nome', COUNT(t.song_id) AS 'reproducoes'
    FROM
        (SELECT 
            h.user_id, h.song_id AS 'song_id', s.song_title AS 'cancao'
        FROM
            SpotifyClone.reproduction_history AS h
        INNER JOIN SpotifyClone.users AS u ON h.user_id = u.user_id
        INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.song_id
        WHERE
            u.plan_id <> 1) AS t
    GROUP BY t.song_id
    ORDER BY `nome` ASC;
