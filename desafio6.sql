CREATE VIEW faturamento_atual AS
SELECT 
    MIN(pln.plan_value) AS 'faturamento_minimo',
    MAX(pln.plan_value) AS 'faturamento_maximo',
    ROUND(AVG(pln.plan_value), 2) AS 'faturamento_medio',
    SUM(pln.plan_value) AS 'faturamento_total'
FROM
    SpotifyClone.plans_table AS pln
        JOIN
    SpotifyClone.users_table AS usr ON pln.plan_id = usr.plan_id;
