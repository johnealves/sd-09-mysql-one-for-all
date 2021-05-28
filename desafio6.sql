CREATE VIEW faturamento_atual AS
    SELECT 
        FORMAT(MIN(p.plan_value), 2) AS 'faturamento_minimo',
        FORMAT(MAX(p.plan_value), 2) AS 'faturamento_maximo',
        FORMAT(AVG(p.plan_value), 2) AS 'faturamento_medio',
        FORMAT(SUM(p.plan_value), 2) AS 'faturamento_total'
    FROM
        SpotifyClone.user AS u
            JOIN
        SpotifyClone.plan AS p ON p.plan_id = u.plan_id;
