CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS 'usuario', s.song_title AS 'nome'
    FROM
        SpotifyClone.reproduction_history AS h
            INNER JOIN
        SpotifyClone.users AS u ON h.user_id = u.user_id
            INNER JOIN
        SpotifyClone.songs AS s ON h.song_id = s.song_id
    ORDER BY u.user_name ASC , s.song_title ASC;
