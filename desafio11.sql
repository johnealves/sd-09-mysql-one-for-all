CREATE VIEW cancoes_premium AS
SELECT s.song_name AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.song AS s ON ph.song_id = s.song_id
GROUP BY s.song_name
ORDER BY s.song_name;
