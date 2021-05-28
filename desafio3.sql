CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.name AS 'usuario', s.name AS 'nome'
    FROM
        SpotifyClone.user AS u
            JOIN
        SpotifyClone.song_historic AS sh ON sh.user_id = u.user_id
            JOIN
        SpotifyClone.song AS s ON sh.song_id = s.song_id
    ORDER BY u.name , s.name;
