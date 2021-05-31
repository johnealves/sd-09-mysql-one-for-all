CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        song_title AS cancao,
        (SELECT COUNT(user_id) FROM spotifyclone.activity WHERE spotifyclone.songs.song_id = activity.song_id ) as reproducoes
    FROM
        spotifyclone.songs
GROUP BY song_title, song_id
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
