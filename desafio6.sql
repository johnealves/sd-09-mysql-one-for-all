CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(p.plan_valor), 2) AS faturamento_minimo,
  ROUND(MAX(p.plan_valor), 2) AS faturamento_maximo,
  ROUND(AVG(p.plan_valor), 2) AS faturamento_medio,
  SUM(plan_valor) AS faturamento_total
FROM
  SpotifyClone.plan AS p
  INNER JOIN SpotifyClone.user AS u ON p.plan_id = u.plan_id;