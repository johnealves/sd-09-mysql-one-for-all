CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        cancao.cancao,
        COUNT(cancao.id) AS reproducoes
    FROM
        SpotifyClone.historico_reproducao
            INNER JOIN SpotifyClone.cancao ON cancao.id = historico_reproducao.cancao_id
    GROUP BY cancao.id
    ORDER BY COUNT(cancao.id) DESC , cancao.cancao ASC
    LIMIT 2;
