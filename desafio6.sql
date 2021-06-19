CREATE VIEW faturamento_atual AS
SELECT MIN(valor_plano) AS faturamento_minimo, 
MAX(valor_plano) AS faturamento_maximo,
ROUND(AVG(CEIL(valor_plano)),2) AS 'faturamento_medio',
SUM(p.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.Planos p
INNER JOIN SpotifyClone.Usuarios u ON p.plano_id = u.plano_id;
