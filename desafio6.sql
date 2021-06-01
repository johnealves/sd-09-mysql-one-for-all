CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(P.`value_plan`), 2) AS `faturamento_minimo`,
  ROUND(MAX(P.`value_plan`), 2) AS `faturamento_maximo`,
  ROUND(AVG(P.`value_plan`), 2) AS `faturamento_medio`,
  ROUND(SUM(P.`value_plan`), 2) AS `faturamento_total`
FROM SpotifyClone.Plans AS P
INNER JOIN SpotifyClone.Users AS U ON U.plan_id = P.plan_id;
