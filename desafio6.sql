CREATE VIEW faturamento_atual AS
    SELECT 
        FORMAT(MIN(t1.price), 2) AS faturamento_minimo,
        FORMAT(MAX(t1.price), 2) AS faturamento_maximo,
        FORMAT(ROUND(AVG(price), 2), 2) AS faturamento_medio,
        FORMAT(SUM(t1.price), 2) AS faturamento_total
    FROM
        SpotifyClone.plans AS t1
            INNER JOIN
        SpotifyClone.users AS t2 ON t1.plan_id = t2.plan_id;
