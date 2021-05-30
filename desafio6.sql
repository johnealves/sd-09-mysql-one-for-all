CREATE VIEW faturamento_atual
AS SELECT
ROUND(MIN(T2.valor_plano), 2) AS 'faturamento_minimo',
ROUND(MAX(T2.valor_plano), 2) AS 'aturamento_maximo',
ROUND(AVG(T2.valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(T2.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.Usuario AS T1
INNER JOIN SpotifyClone.Plano AS T2
ON T1.plano_id = T2.plano_id;
