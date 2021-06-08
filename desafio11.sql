CREATE VIEW cancoes_premium AS
SELECT 
songs.name AS 'nome', COUNT(*) AS 'reproducoes'
FROM
SpotifyClone.songs AS songs
INNER JOIN
SpotifyClone.playback_history AS history ON history.song_id = songs.song_id
INNER JOIN
SpotifyClone.users AS users ON history.user_id = users.user_id
INNER JOIN
SpotifyClone.subscriptions AS subscriptions ON users.subscription_id = subscriptions.subscription_id
WHERE subscriptions.subscription = "universitário" OR subscriptions.subscription = "familiar"
GROUP BY songs.name
ORDER BY 2 DESC , 1
;
