CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song_name AS 'cancao', COUNT(h.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.historic AS h
            INNER JOIN
        SpotifyClone.songs AS s ON h.song_id = s.song_id
    GROUP BY h.song_id
    HAVING reproducoes > 1;
