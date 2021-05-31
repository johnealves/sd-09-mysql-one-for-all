CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(plan_value), 2) AS faturamento_minimo,
        ROUND(MAX(plan_value), 2) AS faturamento_maximo,
        ROUND(SUM(plan_value) / COUNT(u.plan_id), 2) AS faturamento_medio,
        ROUND(SUM(plan_value), 2) AS faturamento_total
    FROM
        spotifyclone.plans p
            INNER JOIN
        spotifyclone.users u ON p.plan_id = u.plan_id;
