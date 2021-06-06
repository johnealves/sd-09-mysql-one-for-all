CREATE VIEW cancoes_premium AS
SELECT s.song_name AS nome, COUNT(hist.user_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS hist ON s.song_id = hist.song_id
INNER JOIN SpotifyClone.user AS u ON hist.user_id = u.user_id
WHERE u.plan_id IN (2 , 3)
GROUP BY s.song_id ORDER BY 1 ASC;
