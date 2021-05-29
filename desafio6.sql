CREATE VIEW faturamento_atual AS
  SELECT FORMAT(ROUND(MIN(p.plan_value), 2), 2) AS faturamento_minimo,
    FORMAT(ROUND(MAX(p.plan_value), 2), 2) AS faturamento_maximo,
    FORMAT(ROUND(AVG(p.plan_value), 2), 2) AS faturamento_medio,
    FORMAT(ROUND(SUM(p.plan_value), 2), 2) AS faturamento_totol
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.plan AS p
  ON u.plan_id = p.plan_id;
