CREATE VIEW faturamento_atual AS
    SELECT 
        FORMAT(MIN(pl.valor_plano), 2) AS `faturamento_minimo`,
        FORMAT(MAX(pl.valor_plano), 2) AS `faturamento_maximo`,
        FORMAT(AVG(pl.valor_plano), 2) AS `faturamento_medio`,
        FORMAT(SUM(pl.valor_plano), 2) AS `faturamento_total`
    FROM
        planos AS pl,
        usuarios AS us
    WHERE
        pl.plano_id = us.plano_id;