CREATE VIEW faturamento_atual AS
	SELECT 
		FORMAT(ROUND(MIN(preco_plano), 2), 2) AS faturamento_minimo,
		FORMAT(ROUND(MAX(preco_plano), 2), 2) AS faturamento_maximo,
		FORMAT(ROUND(AVG(preco_plano), 2), 2) AS faturamento_medio,
		FORMAT(ROUND(SUM(preco_plano), 2), 2) AS faturamento_total
        -- Dica de formatação encontrada em: https://groups.google.com/g/listaphp/c/L6SVwvIfYNU?pli=1
	FROM
		SpotifyClone.usuarios AS u

	INNER JOIN
	SpotifyClone.planos AS p ON u.id_plano = p.id_plano;

-- SELECT * FROM faturamento_atual;
