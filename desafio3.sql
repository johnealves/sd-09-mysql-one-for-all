CREATE VIEW historico_reproducao_usuarios AS
	SELECT
		u.usuario AS usuario,
		c.cancao AS nome
	FROM SpotifyClone.Historico AS h
    INNER JOIN SpotifyClone.Usuarios AS u ON u.usuario_id = h.usuario_id
    INNER JOIN SpotifyClone.Cancoes AS c ON c.cancao_id = h.cancao_id
    ORDER BY usuario, nome;
