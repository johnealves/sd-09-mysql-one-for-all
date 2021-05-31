CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        user_name AS usuario, song_title AS nome
    FROM
        spotifyClone.activity a
            INNER JOIN
        spotifyClone.users u ON a.user_id = u.user_id
            INNER JOIN
        spotifyClone.songs s ON a.song_id = s.song_id
    ORDER BY 1 ASC , 2 ASC;
    