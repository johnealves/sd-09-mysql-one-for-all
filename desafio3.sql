CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.name AS 'usuario', s.name AS 'nome'
    FROM
        spotifyclone.user AS u
            JOIN
        spotifyclone.song_historic AS sh ON sh.user_id = u.user_id
            JOIN
        spotifyclone.song AS s ON sh.song_id = s.song_id
    ORDER BY u.name , s.name;
