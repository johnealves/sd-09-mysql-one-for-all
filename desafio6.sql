CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(p.valor), 2) AS "faturamento_minimo",
FORMAT(MAX(p.valor), 2) AS "faturamento_maximo",
FORMAT(AVG(p.valor), 2) AS "faturamento_medio",
FORMAT(SUM(p.valor), 2) AS "faturamento_total"
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p ON u.plano_id = p.plano_id;
