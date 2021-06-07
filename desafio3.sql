CREATE VIEW historico_reproducao_usuarios AS
SELECT 
users.name AS 'usuario',
songs.name AS 'nome'
FROM
SpotifyClone.users AS users
INNER JOIN SpotifyClone.playback_history AS playback_history
ON playback_history.user_id = users.user_id
INNER JOIN SpotifyClone.songs AS songs
ON songs.song_id = playback_history.song_id
ORDER BY 1, 2
;
