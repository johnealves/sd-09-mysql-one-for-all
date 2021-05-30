CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        t2.`user` AS usuario, t3.song AS nome
    FROM
        SpotifyClone.history AS t1
            INNER JOIN
        SpotifyClone.users AS t2 ON t1.user_id = t2.user_id
            INNER JOIN
        SpotifyClone.songs AS t3 ON t1.song_id = t3.song_id
    ORDER BY 1 ASC , 2 ASC;
