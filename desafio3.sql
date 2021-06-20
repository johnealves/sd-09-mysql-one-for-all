CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
	u.user_name AS usuario,
    s.song_name AS nome
FROM SpotifyClone.stream_history AS sh
INNER JOIN SpotifyClone.users AS u ON u.id_user = sh.id_user
INNER JOIN SpotifyClone.songs AS s on s.id_song = sh.id_song
ORDER BY usuario ASC, nome ASC;
