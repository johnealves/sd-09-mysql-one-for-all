CREATE VIEW faturamento_atual AS
SELECT MIN(P.plan_value) AS faturamento_atual, MAX(P.plan_value) AS faturamento_maximo, ROUND(AVG(P.plan_value), 2) AS faturamento_medio, SUM(P.plan_value) AS faturamento_total
FROM SpotifyClone.plans AS P
INNER JOIN SpotifyClone.users AS U ON P.plan_id = U.plan_id;
