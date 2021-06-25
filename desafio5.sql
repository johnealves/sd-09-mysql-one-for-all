CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
  SELECT c.nome AS 'cancao',
    COUNT(hr.cancao_id) AS 'reproducoes'
  FROM SpotifyClone.historico_reproducoes AS hr
    INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hr.cancao_id
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 2;