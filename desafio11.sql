CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT
	s.song_name AS nome,
    COUNT(sh.id_user) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.stream_history AS sh
ON s.id_song = sh.id_song
INNER JOIN SpotifyClone.users AS u ON u.id_user = sh.id_user
WHERE u.plan IN (2, 3)
GROUP BY nome
ORDER BY nome ASC;
