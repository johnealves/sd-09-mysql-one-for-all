CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(plan.plano_preco), 2) AS 'faturamento_minimo', FORMAT(MAX(plan.plano_preco), 2) AS 'faturamento_maximo', FORMAT(ROUND(AVG(plan.plano_preco), 2), 2) AS 'faturamento_medio', FORMAT(SUM(plan.plano_preco), 2) AS 'faturamento_total'
FROM SpotifyClone.planos plan
INNER JOIN SpotifyClone.usuarios users ON users.plano_id = plan.plano_id
