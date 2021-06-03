CREATE VIEW faturamento_atual AS
  SELECT
    MIN(plan_value) AS faturamento_minimo,
    MAX(plan_value) AS faturamento_maximo,
    ROUND(AVG(plan_value), 2) AS faturamento_medio,
    SUM(plan_value) AS faturamento_total
  FROM
    plan AS plan
    INNER JOIN users AS users
      ON plan.plan_id = users.plan_id;
  
  SELECT * FROM SpotifyClone.faturamento_atual;