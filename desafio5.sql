CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT s.song_name AS cancao, COUNT(ph.user_id) AS reproducoes
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.song AS s ON s.song_id = ph.song_id
GROUP BY ph.song_id
ORDER BY COUNT(ph.user_id) DESC, s.song_name
LIMIT 2;
