CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(valor_plano), 2) AS `faturamento_minimo`,
        MAX(valor_plano) AS `faturamento_maximo`,
        ROUND(AVG(valor_plano), 2) AS `faturamento_medio`,
        SUM(valor_plano) AS `faturamento_total`
    FROM
        SpotifyClone.plano;
