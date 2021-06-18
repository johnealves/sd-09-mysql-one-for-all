CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        song_name AS cancao, COUNT(song_name) AS reproducoes
    FROM
        SpotifyClone.playing_history
            JOIN
        SpotifyClone.song ON SpotifyClone.song.song_id = SpotifyClone.playing_history.song_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
