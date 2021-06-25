CREATE VIEW SpotifyClone.cancoes_premium  AS
  SELECT c.nome AS 'nome',
    COUNT(hr.cancao_id) AS 'reproducoes'
  FROM SpotifyClone.historico_reproducoes AS hr
    INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hr.cancao_id
    INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = hr.usuario_id
    WHERE u.plano_id IN(2, 3)
  GROUP BY 1
  ORDER BY 1;
