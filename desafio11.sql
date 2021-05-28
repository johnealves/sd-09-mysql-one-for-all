CREATE VIEW SpotifyClone.cancoes_premium AS
    SELECT 
        c.cancao_nome AS nome, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.Historicos AS h
            INNER JOIN
        SpotifyClone.Cancoes AS c ON h.cancao_id = c.cancao_id
            INNER JOIN
        SpotifyClone.Usuarios AS u ON h.usuario_id = u.usuario_id
            INNER JOIN
        SpotifyClone.Planos AS p ON u.plano_id = p.plano_id
    WHERE
        p.plano IN ('familiar' , 'universitário')
    GROUP BY c.cancao_nome
    ORDER BY nome;
