CREATE VIEW faturamento_atual AS
SELECT
MIN(plano_valor) AS `faturamento_minimo`,
MAX(plano_valor) AS `faturamento_maximo`,
ROUND(AVG(p.plano_valor), 2) AS `faturamento_medio`,
SUM(p.plano_valor) AS `faturamento_total`
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u ON u.plano_id = p.plano_id;
