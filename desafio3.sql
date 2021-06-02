CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS 'usuario', s.song_name AS 'nome'
    FROM
        SpotifyClone.ReproductionHistory AS r
            INNER JOIN
        SpotifyClone.Users AS u ON r.user_id = u.user_id
            INNER JOIN
        SpotifyClone.Songs AS s ON r.song_id = s.song_id
    ORDER BY 1 , 2;
