CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        user_name AS usuario, song_title AS nome
    FROM
        SpotifyClone.activity a
            INNER JOIN
        SpotifyClone.users u ON a.user_id = u.user_id
            INNER JOIN
        SpotifyClone.songs s ON a.song_id = s.song_id
        ORDER BY 1 ASC, 2 ASC;
