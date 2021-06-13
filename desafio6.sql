CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(price), 2) AS faturamento_minimo,
        ROUND(MAX(price), 2) AS faturamento_maximo,
        ROUND(AVG(price), 2) AS faturamento_medio,
        ROUND(SUM(price), 2) AS faturamento_total
    FROM
        schemes AS s
            INNER JOIN
        users AS u ON u.plan_id = s.plan_id;
