CREATE VIEW top_2_hits_do_momento AS
  SELECT c.cancao as `cancao`, COUNT(h.usuario_id) as `reproducoes` FROM SpotifyClone.historico as h
  INNER JOIN SpotifyClone.cancao as c ON c.cancao_id = h.cancao_id
  GROUP BY `cancao`
  ORDER BY `reproducoes` DESC, `cancao` 
  LIMIT 2;
  