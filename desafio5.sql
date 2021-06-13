CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song_title AS 'cancao', COUNT(r.user_id) AS 'reproducoes'
    FROM
        reproduction_history AS r
            INNER JOIN
        songs AS s ON r.song_id = s.song_id
    GROUP BY 1
    ORDER BY 2 DESC , 1 ASC
    LIMIT 2;
