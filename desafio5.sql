CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song_title AS 'cancao', COUNT(h.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.reproduction_history AS h
            INNER JOIN
        SpotifyClone.songs AS s ON h.song_id = s.song_id
    GROUP BY s.song_id
    ORDER BY `reproducoes` DESC , s.song_title ASC
    LIMIT 2;
