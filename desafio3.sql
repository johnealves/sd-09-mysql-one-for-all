CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        c.cancao AS `nome`, u.usuario AS `usuario`
    FROM
        SpotifyClone.usuario AS u
            INNER JOIN
        SpotifyClone.historico AS h
            INNER JOIN
        SpotifyClone.cancao AS c ON c.cancao_id = h.cancao_id AND u.usuario_id = h.usuario_id
    ORDER BY `usuario` , `nome`;
