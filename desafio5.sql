CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_nome AS cancao, COUNT(uh.cancao_id) AS reproducoes FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.usuario_historico AS uh ON uh.cancao_id = c.cancao_id
GROUP BY uh.cancao_id
ORDER BY `reproducoes` DESC, cancao ASC
LIMIT 2;
