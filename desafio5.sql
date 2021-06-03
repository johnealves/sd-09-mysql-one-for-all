CREATE VIEW top_2_hits_do_momento AS
SELECT 
    can.nome AS cancao, COUNT(id_usuario) AS reproducoes
FROM
    SpotifyClone.user_reproducoes AS rep
        INNER JOIN
    SpotifyClone.cancoes AS can ON rep.id_cancao = can.id_cancao
GROUP BY cancao
ORDER BY reproducoes DESC
LIMIT 2;