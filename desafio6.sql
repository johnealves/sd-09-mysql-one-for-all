CREATE VIEW faturamento_atual AS
SELECT (SELECT MIN(valor_plano) FROM spotifyclone.plano) AS `faturamento_minimo`,
(SELECT MAX(valor_plano) FROM spotifyclone.plano) AS `faturamento_maximo`,
ROUND(AVG(plan.valor_plano), 2) AS `faturamento_medio`,
SUM(plan.valor_plano) AS `faturamento_total`
FROM spotifyclone.plano AS plan
JOIN spotifyclone.usuarios AS `user`
ON plan.plano_id = `user`.plano_id;
