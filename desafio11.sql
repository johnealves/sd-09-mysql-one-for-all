CREATE VIEW cancoes_premium AS
SELECT
    can.cancao_nome AS `nome`,
    COUNT(*) AS `reproducoes`
FROM
    SpotifyClone.historico_de_reproducoes AS hr
    INNER JOIN SpotifyClone.usuario AS usu ON hr.usuario_id = usu.usuario_id
    INNER JOIN SpotifyClone.plano AS pl ON usu.plano_id = pl.plano_id
    INNER JOIN SpotifyClone.cancao AS can ON hr.cancao_id = can.cancao_id
WHERE
    pl.plano_tipo != `gratuito`
GROUP BY
    `nome`
ORDER BY
    `nome`;
