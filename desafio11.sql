CREATE VIEW cancoes_premium AS
    SELECT 
        c.cancao AS `nome`, COUNT(hr.usuario_id) AS reproducoes
    FROM
        SpotifyClone.cancoes AS c
            INNER JOIN
        SpotifyClone.historico_reproducao AS hr ON hr.cancao_id = c.cancao_id
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.usuario_id = hr.usuario_id
    WHERE
        u.plano_id IN (2 , 3)
    GROUP BY `nome` , hr.cancao_id
    ORDER BY `nome` ASC;
