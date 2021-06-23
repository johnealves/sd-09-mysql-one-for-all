USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_nome AS cancao, COUNT(h.historico_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancoes as c ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
