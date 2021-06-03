CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.cancao_titulo AS 'cancao',
        COUNT(ph.cancao_id) AS 'reproducoes'
    FROM
        SpotifyClone.playlist_history AS ph
            JOIN
        SpotifyClone.songs AS s ON ph.cancao_id = s.cancao_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao` ASC
    LIMIT 2;
