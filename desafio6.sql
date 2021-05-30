CREATE VIEW faturamento_atual AS
SELECT MIN(plan.valor) AS faturamento_minimo,
MAX(plan.valor) AS faturamento_maximo,
ROUND(AVG(plan.valor), 2) AS faturamento_medio,
ROUND(SUM(plan.valor), 2) AS faturamento_total
FROM SpotifyClone.Planos AS plan
INNER JOIN SpotifyClone.Usuarios AS usu
ON usu.plano_id = plan.plano_id;