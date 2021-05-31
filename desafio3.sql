CREATE VIEW historico_reproducao_usuarios AS
	SELECT u.usuario as `usuario`, c.cancao  as `nome` FROM SpotifyClone.usuario as u
    INNER JOIN SpotifyClone.historico as h ON u.usuario_id = h.usuario_id
    INNER JOIN SpotifyClone.cancao as c ON c.cancao_id = h.cancao_id
    ORDER BY `usuario`, `nome`;
