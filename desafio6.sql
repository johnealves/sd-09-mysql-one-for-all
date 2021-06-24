CREATE VIEW faturamento_atual AS
    SELECT 
        (SELECT 
                MIN(valor_plano)
            FROM
                SpotifyClone.planos) AS 'faturamento_minimo',
        (SELECT 
                MAX(valor_plano)
            FROM
                SpotifyClone.planos) AS 'faturamento_maximo',
        (SELECT 
                ROUND(AVG(pl.valor_plano), 2) AS 'média'
            FROM
                SpotifyClone.planos AS pl
                    INNER JOIN
                SpotifyClone.usuario AS us ON pl.plano_id = us.plano_id) AS 'faturamento_medio',
        (SELECT 
                SUM(pl.valor_plano) AS 'média'
            FROM
                SpotifyClone.planos AS pl
                    INNER JOIN
                SpotifyClone.usuario AS us ON pl.plano_id = us.plano_id) AS 'faturamento_total';
