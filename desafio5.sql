CREATE VIEW `top_2_hits_do_momento` AS
SELECT can.cancao AS `cancao`,
COUNT(his.cancao_id) AS `reproducoes`
FROM spotifyclone.historico_reproducao AS his
JOIN spotifyclone.cancoes AS can
ON his.cancao_id = can.cancao_id
GROUP BY can.cancao_id
ORDER BY COUNT(his.cancao_id) DESC, can.cancao ASC
LIMIT 2;
