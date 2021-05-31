USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS 'usuario', m.music_name AS 'nome'
    FROM
        music_history AS h
            INNER JOIN music AS m ON m.music_id = h.music_id
            INNER JOIN `user` AS u ON u.user_id = h.user_id;
