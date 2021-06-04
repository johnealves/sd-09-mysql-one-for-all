CREATE VIEW faturamento_atual AS
SELECT MIN(valor_plano) AS faturamento_minimo,
MAX(valor_plano) AS faturamento_maximo,
ROUND(SUM(valor_plano) / COUNT(u.usuario),2) AS faturamento_medio,
SUM(valor_plano) AS faturamento_total
FROM SpotifyClone.planos as p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id; 		