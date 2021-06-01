CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        CANCAO.cancao_name AS 'cancao',
        COUNT(CANCAO.cancao_id) AS 'reproducoes'
    FROM
        SpotifyClone.historico_reproducao AS HISTORICO
            INNER JOIN
        SpotifyClone.cancoes AS CANCAO ON HISTORICO.cancao_id = CANCAO.cancao_id
    GROUP BY 1
    ORDER BY 2 DESC , 1
    LIMIT 2;