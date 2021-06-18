CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(plan_price) AS faturamento_minimo,
        MAX(plan_price) AS faturamento_maximo,
        ROUND(AVG(plan_price), 2) AS faturamento_medio,
        SUM(plan_price) AS faturamento_total
    FROM
        SpotifyClone.`user`
            JOIN
        SpotifyClone.plan ON plan.plan_id = `user`.plan_id;
