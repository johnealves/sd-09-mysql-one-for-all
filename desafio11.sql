CREATE VIEW cancoes_premium AS
SELECT
M.music_name AS nome,
COUNT(PH.user_id) AS reproducoes
FROM SpotifyClone.spotify_musics AS M
INNER JOIN SpotifyClone.play_history AS PH ON M.music_id = PH.music_id
INNER JOIN SpotifyClone.spotify_users AS U ON U.user_id = PH.user_id
WHERE U.plan_id IN(2, 3)
GROUP BY PH.music_id
ORDER BY nome ASC;