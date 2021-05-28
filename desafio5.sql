CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        c.cancao_nome AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.Historicos AS h
            INNER JOIN
        SpotifyClone.Cancoes AS c ON h.cancao_id = c.cancao_id
    GROUP BY c.cancao_nome
    ORDER BY reproducoes DESC, cancao
    LIMIT 2;
