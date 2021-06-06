CREATE VIEW faturamento_atual AS
SELECT
  FORMAT(MIN(p.plan_price), 2) AS faturamento_minimo,
  FORMAT(MAX(p.plan_price), 2) AS faturamento_maximo,
  FORMAT(ROUND(AVG(plan_price), 2), 2) AS faturamento_medio,
  FORMAT(SUM(p.plan_price), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u ON p.plan_id = u.plan_id;
