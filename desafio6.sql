CREATE VIEW faturamento_atual AS
	SELECT
		FORMAT(ROUND(MIN(p.valor), 2), 2) AS faturamento_minimo,
    FORMAT(ROUND(MAX(p.valor), 2), 2) AS faturamento_maximo,
    FORMAT(ROUND(AVG(p.valor), 2), 2) AS faturamento_medio,
    FORMAT(ROUND(SUM(p.valor), 2), 2) AS faturamento_total
	FROM SpotifyClone.Planos AS p
  INNER JOIN SpotifyClone.Usuarios AS u ON u.plano_id = p.plano_id;
