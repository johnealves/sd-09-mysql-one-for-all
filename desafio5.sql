-- INNER JOIN
-- CREATE VIEW top_2_hits_do_momento AS
-- SELECT C.titulo AS cancao, COUNT(*) AS reproducoes
-- FROM SpotifyClone.usuario_cancao AS UC
-- INNER JOIN SpotifyClone.cancoes AS C ON C.cancao_id = UC.cancao_id
-- GROUP BY C.titulo
-- ORDER BY reproducoes DESC, cancao ASC
-- LIMIT 2;

-- SUBQUERIES
CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT titulo FROM SpotifyClone.cancoes WHERE cancao_id = UC.cancao_id) AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.usuario_cancao AS UC
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
