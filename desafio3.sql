CREATE VIEW historico_reproducao_usuarios AS
	SELECT
		usu.usuario AS usuario,
        can.cancao AS nome
	FROM SpotifyClone.reproducao AS rep
    INNER JOIN SpotifyClone.Usuario AS usu ON usu.usuario_id = rep.usuario_id
    INNER JOIN SpotifyClone.Cancao AS can ON can.cancao_id = rep.cancao_id
    ORDER BY usu.usuario, can.cancao;