CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS 'usuario', s.song_title AS 'nome'
    FROM
        reproduction_history AS r
            INNER JOIN
        users AS u ON r.user_id = u.user_id
            INNER JOIN
        songs AS s ON r.song_id = s.song_id
    ORDER BY 1 , 2;
