CREATE VIEW historico_reproducao_usuarios AS
SELECT u.`user` AS usuario, s.song_name AS nome
FROM SpotifyClone.history AS hist
INNER JOIN SpotifyClone.users AS u ON hist.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s ON hist.song_id = s.song_id
ORDER BY 1 ASC , 2 ASC;
