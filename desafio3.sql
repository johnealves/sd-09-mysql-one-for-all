CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        usuario.usuario,
        cancao.cancao AS nome
    FROM
        SpotifyClone.historico_reproducao
            INNER JOIN SpotifyClone.usuario ON usuario.id = historico_reproducao.usuario_id
            INNER JOIN SpotifyClone.cancao ON cancao.id = historico_reproducao.cancao_id
    ORDER BY usuario.usuario , cancao.cancao;
