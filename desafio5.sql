CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        songs.title AS cancao, COUNT(ush.song_id) AS reproducoes
    FROM
        users_songs_history AS ush
            INNER JOIN
        songs ON songs.song_id = ush.song_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;
    