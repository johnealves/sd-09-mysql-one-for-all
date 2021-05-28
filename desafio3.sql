CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        u.usuario_nome AS usuario, c.cancao_nome AS nome
    FROM
        SpotifyClone.Historicos AS h
            INNER JOIN
        SpotifyClone.Usuarios AS u ON h.usuario_id = u.usuario_id
            INNER JOIN
        SpotifyClone.Cancoes AS c ON h.cancao_id = c.cancao_id
    ORDER BY usuario , nome;
