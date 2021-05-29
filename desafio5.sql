USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON c.cancao_id = hr.cancao_id
GROUP BY hr.cancao_id
ORDER BY COUNT(hr.cancao_id) DESC, c.cancao ASC
LIMIT 2;
