CREATE VIEW cancoes_premium AS
SELECT c.cancao as `nome`,
COUNT(h.usuario_id) as `reproducoes`
FROM SpotifyClone.historico as h
	INNER JOIN SpotifyClone.cancao as c ON c.cancao_id = h.cancao_id
    INNER JOIN SpotifyClone.usuario as u ON u.usuario_id = h.usuario_id 
    INNER JOIN SpotifyClone.plano as p ON u.plano_id = p.plano_id
  WHERE p.plano IN ('familiar', 'universitário')
  GROUP BY c.cancao_id
  ORDER BY c.cancao;
