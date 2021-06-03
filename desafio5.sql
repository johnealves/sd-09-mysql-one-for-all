CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.cancao AS cancao, COUNT(c.cancao_id) AS reproducoes
    FROM
        SpotifyClone.cancoes AS c
            INNER JOIN
        SpotifyClone.historico_de_reproducao AS hr ON c.cancao_id = hr.cancao_id
    GROUP BY c.cancao
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;
