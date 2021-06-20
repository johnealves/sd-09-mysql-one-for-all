CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT
	s.song_name AS cancao,
    COUNT(sh.id_song) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.stream_history AS sh
ON sh.id_song = s.id_song
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
