CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        c.cancao as `nome`, COUNT(c.cancao) AS `reproducoes`
    FROM
        SpotifyClone.usuarios AS u,
        SpotifyClone.historico AS h,
        SpotifyClone.cancoes AS c
    WHERE
        (u.plano_id <> 1)
            AND (h.usuario_id = u.usuario_id)
            AND (c.cancao_id = h.cancao_id)
    GROUP BY 1
    ORDER BY `nome`;
    