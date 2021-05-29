CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        ca.cancao, COUNT(hru.cancao_id) AS `reproducoes`
    FROM
        cancoes AS ca,
        historico_reproducoes_unicas AS hru
    WHERE
        ca.cancao_id = hru.cancao_id
    GROUP BY ca.cancao_id
    ORDER BY `reproducoes` DESC, ca.cancao ASC
	LIMIT 2