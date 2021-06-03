CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        m.musica AS 'cancao',
        (SELECT DISTINCT
                COUNT(hr.usuario_id)
            FROM
                SpotifyClone.historico_reproducoes) AS 'reproducoes'
    FROM
        SpotifyClone.musicas AS m
            INNER JOIN
        SpotifyClone.historico_reproducoes AS hr ON m.musica_id = hr.musica_id
    GROUP BY 1
    ORDER BY 2 DESC , 1
    LIMIT 2;
