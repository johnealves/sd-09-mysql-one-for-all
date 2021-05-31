CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        song_title AS cancao,
        (SELECT COUNT(user_id) FROM SpotifyClone.activity WHERE SpotifyClone.songs.song_id = activity.song_id ) as reproducoes
    FROM
        SpotifyClone.songs
GROUP BY song_title, song_id
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
