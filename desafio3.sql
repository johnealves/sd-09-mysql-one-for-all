CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario, s.song_name AS nome
FROM SpotifyClone.history AS hist
INNER JOIN SpotifyClone.user AS u ON hist.user_id = u.user_id
INNER JOIN SpotifyClone.song AS s ON hist.song_id = s.song_id
ORDER BY 1 ASC , 2 ASC;
