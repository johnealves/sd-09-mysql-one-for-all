CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS usuario, s.song_name AS nome
    FROM
        SpotifyClone.`history` AS h
            INNER JOIN
        SpotifyClone.song AS s ON h.song_id = s.song_id
            INNER JOIN
        SpotifyClone.`user` AS u ON h.user_id = u.user_id
    ORDER BY u.user_name , s.song_name;
