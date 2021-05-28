USE spotifyclone;

CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.name AS 'cancao', COUNT(sh.user_id) AS 'reproducoes'
    FROM
        song AS s
            JOIN
        song_historic AS sh ON s.song_id = sh.song_id
    GROUP BY s.name
    ORDER BY COUNT(sh.user_id) DESC , s.name
    LIMIT 2;
