CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
    SELECT 
        u.usuario AS `usuario`, c.cancao AS `nome`
    FROM
        SpotifyClone.historico AS h,
        SpotifyClone.usuarios AS u,
        SpotifyClone.cancoes AS c
    WHERE
        (h.usuario_id = u.usuario_id)
            AND (h.cancao_id = c.cancao_id)
    ORDER BY `usuario` ASC , `nome` ASC;