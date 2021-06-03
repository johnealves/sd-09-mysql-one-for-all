CREATE VIEW faturamento_atual AS
  SELECT
    MIN(plan_value) AS faturamento_minimo,
    MAX(plan_value) AS faturamento_maximo,
    ROUND(AVG(plan_value), 2) AS faturamento_medio,
    SUM(plan_value) AS faturamento_total
  FROM
    (SELECT plan.plan_value
      FROM SpotifyClone.users AS users
    INNER JOIN SpotifyClone.plan AS plan
      ON users.plan_id = plan.plan_id)
  AS plano;
  