CREATE VIEW cancoes_premium AS
SELECT S.song_name AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.songs_history AS SH
INNER JOIN SpotifyClone.songs AS S ON S.song_id = SH.song_id
INNER JOIN SpotifyClone.users AS U ON U.user_id = SH.user_id
WHERE U.plan_id BETWEEN 2 AND 3
GROUP BY nome
ORDER BY nome ASC;
