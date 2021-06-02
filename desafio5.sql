CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        s.song_name AS 'cancao', COUNT(r.user_id) AS 'reproducoes'
    FROM
        SpotifyClone.ReproductionHistory AS r
            INNER JOIN
        SpotifyClone.Songs AS s ON r.song_id = s.song_id
    GROUP BY 1
    ORDER BY 2 DESC , 1 ASC
    LIMIT 2;
    