CREATE VIEW cancoes_premium AS
	SELECT
		can.cancao AS nome,
        COUNT(rep.cancao_id) AS reproducoes
	FROM SpotifyClone.Reproducao AS rep
    INNER JOIN SpotifyClone.Cancao AS can ON can.cancao_id = rep.cancao_id
    INNER JOIN SpotifyClone.Usuario AS usu ON usu.usuario_id = rep.usuario_id
    INNER JOIN SpotifyClone.Plano AS pla ON pla.plano_id = usu.plano_id
	WHERE pla.plano = 'familiar' OR pla.plano = 'universitário'
    GROUP BY rep.cancao_id
    ORDER BY can.cancao;