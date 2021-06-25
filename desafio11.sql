CREATE VIEW cancoes_premium AS
    SELECT 
        can.cancoes AS 'nome',
        COUNT(his.cancoes_id) AS 'reproducoes'
    FROM
        SpotifyClone.cancoes_por_album AS can
            INNER JOIN
        SpotifyClone.historico AS his ON can.cancoes_id = his.cancoes_id
            INNER JOIN
        SpotifyClone.usuario AS us ON his.usuario_id = us.usuario_id
    WHERE
        plano_id = 2 OR plano_id = 3
    GROUP BY nome
    ORDER BY nome;
