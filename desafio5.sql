CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_nome AS cancoes, COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_nome
ORDER BY reproducoes DESC, c.cancao_nome
LIMIT 2;

-- SELECT * from top_2_hits_do_momento;
-- DROP VIEW top_2_hits_do_momento;
