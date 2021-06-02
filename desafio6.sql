CREATE VIEW SpotifyClone.faturamento_atual AS
    SELECT 
        ROUND(MIN(plan_value), 2) AS 'faturamento_minimo',
        ROUND(MAX(plan_value), 2) AS 'faturamento_maximo',
        ROUND(AVG(plan_value), 2) AS 'faturamento_medio',
        ROUND(SUM(plan_value), 2) AS 'faturamento_total'
    FROM
        SpotifyClone.Users AS u
            INNER JOIN
        SpotifyClone.Plans AS p ON u.plan_id = p.plan_id;
    