CREATE VIEW SpotifyClone.top_2_hits_do_momento AS SELECT 
    c.cancao, COUNT(*) AS `reproducoes`
FROM
    SpotifyClone.historico AS h,
    SpotifyClone.cancoes AS c
WHERE
    (h.cancao_id = c.cancao_id)
GROUP BY c.cancao
ORDER BY `reproducoes` DESC , c.cancao ASC
LIMIT 2;
