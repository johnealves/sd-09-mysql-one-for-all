CREATE VIEW faturamento_atual AS
	SELECT
		MIN(pla.valor) AS faturamento_minimo,
        MAX(pla.valor) AS faturamento_maximo,
        ROUND(SUM(pla.valor) / COUNT(usu.usuario_id), 2) AS faturamento_medio,
        SUM(pla.valor) AS faturamento_total
	FROM SpotifyClone.Plano as pla
    INNER JOIN SpotifyClone.Usuario AS usu ON usu.plano_id = pla.plano_id;
        