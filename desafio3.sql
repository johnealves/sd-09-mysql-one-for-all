CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT u.user_name AS usuario, s.song_name AS nome
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.song AS s ON ph.song_id = s.song_id
INNER JOIN SpotifyClone.`user` AS u ON ph.user_id = u.user_id
ORDER BY u.user_name, s.song_name;
