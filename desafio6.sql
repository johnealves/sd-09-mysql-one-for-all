CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(p.value), 2) AS 'faturamento_minimo',
        ROUND(MAX(p.value), 2) AS 'faturamento_maximo',
        ROUND(AVG(p.value), 2) AS 'faturamento_medio',
        ROUND(SUM(p.value), 2) AS 'faturamento_total'
    FROM
        users AS u
            INNER JOIN
        plans AS p ON u.plan_id = p.plan_id;
