CREATE VIEW top_2_hits_do_momento AS
    SELECT
        can.cancao_nome AS cancao,
        COUNT(*) AS reproducoes
    FROM SpotifyClone.cancao AS can
        INNER JOIN historico_de_reproducoes AS hrep ON hrep.cancao_id = can.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC, cancao
        LIMIT 2;
