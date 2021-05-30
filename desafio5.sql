CREATE VIEW top_2_hits_do_momento AS
SELECT S.song_name AS cancao, COUNT(SH.song_id) AS reproducoes
FROM SpotifyClone.songs AS S
INNER JOIN SpotifyClone.songs_history AS SH ON S.song_id = SH.song_id
GROUP BY SH.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
