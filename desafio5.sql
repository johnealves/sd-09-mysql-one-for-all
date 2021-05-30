CREATE VIEW top_2_hits_do_momento AS
	SELECT
		can.cancao AS cancao,
        COUNT(rep.cancao_id) AS reproducoes
	FROM SpotifyClone.Reproducao AS rep
    INNER JOIN SpotifyClone.Cancao AS can ON can.cancao_id = rep.cancao_id
    GROUP BY rep.cancao_id
    ORDER BY reproducoes DESC, can.cancao
    LIMIT 2;