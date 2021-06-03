CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario AS 'usuario', s.cancao_titulo AS 'nome'
    FROM
        SpotifyClone.playlist_history AS p
            JOIN
        SpotifyClone.users AS u ON p.usuario_id = u.usuario_id
            JOIN
        SpotifyClone.songs AS s ON p.cancao_id = s.cancao_id
    ORDER BY `usuario` ASC , `nome` ASC;
