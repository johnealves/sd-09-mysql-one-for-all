USE spotifyclone;

CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.name AS 'usuario', s.name AS 'nome'
    FROM
        user AS u
            JOIN
        song_historic AS sh ON sh.user_id = u.user_id
            JOIN
        song AS s ON sh.song_id = s.song_id
    ORDER BY u.name , s.name;
