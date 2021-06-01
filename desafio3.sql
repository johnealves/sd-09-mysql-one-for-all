CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user_name AS 'usuario', m.music_name AS 'nome'
    FROM
        SpotifyClone.music_history AS h
            INNER JOIN SpotifyClone.music AS m ON m.music_id = h.music_id
            INNER JOIN SpotifyClone.`user` AS u ON u.user_id = h.user_id
    ORDER BY `usuario`, `nome`;

SELECT * FROM historico_reproducao_usuarios;