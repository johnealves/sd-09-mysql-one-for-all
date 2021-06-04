CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        sng.song_name AS 'cancao',
        COUNT(his.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.history_table AS his
            JOIN
        SpotifyClone.songs_table AS sng ON his.song_id = sng.song_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao` ASC
    LIMIT 2;
