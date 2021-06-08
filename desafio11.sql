CREATE VIEW cancoes_premium AS
	SELECT
		c.cancao AS nome,
		COUNT(h.usuario_id) AS reproducoes
    FROM SpotifyClone.Historico AS h
    INNER JOIN SpotifyClone.Cancoes AS c ON c.cancao_id = h.cancao_id
    INNER JOIN SpotifyClone.Usuarios AS u ON u.usuario_id = h.usuario_id
    INNER JOIN SpotifyClone.Planos AS p ON p.plano_id = u.plano_id
    WHERE p.plano = 'familiar' OR p.plano = 'universitario'
    GROUP BY nome
    ORDER BY nome;
