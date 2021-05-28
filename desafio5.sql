CREATE VIEW top_2_hits_do_momento AS
SELECT 
t.name AS cancao,
count(*) AS reproducoes
FROM SpotifyClone.play_history AS f
INNER JOIN SpotifyClone.songs AS t
ON f.song_id = t.song_id
GROUP BY t.name
ORDER BY reproducoes DESC, cancao LIMIT 2;
