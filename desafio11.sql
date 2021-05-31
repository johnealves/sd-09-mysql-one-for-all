CREATE VIEW cancoes_premium AS
SELECT s.song_name AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.song AS s ON ph.song_id = s.song_id
INNER JOIN SpotifyClone.user AS u ON u.user_id = ph.user_id
INNER JOIN SpotifyClone.account AS a ON a.account_id = u.account_id
WHERE u.account_id = 2 OR u.account_id = 3
GROUP BY s.song_name
ORDER BY s.song_name;
