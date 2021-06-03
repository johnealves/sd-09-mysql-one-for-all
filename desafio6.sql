CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(plans.price), 2) AS faturamento_minimo,
        ROUND(MAX(plans.price), 2) AS faturamento_maximo,
        ROUND(AVG(plans.price), 2) AS faturamento_medio,
        ROUND(SUM(plans.price), 2) AS faturamento_total
    FROM
        users AS u
            INNER JOIN
        plans ON u.plan_id = plans.plan_id;
