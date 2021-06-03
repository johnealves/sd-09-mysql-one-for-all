CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song_name AS cancao, COUNT(h.song_id) AS reproducoes
    FROM
        SpotifyClone.`history` AS h
            INNER JOIN
        SpotifyClone.song AS s ON s.song_id = h.song_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao` ASC
    LIMIT 2;
