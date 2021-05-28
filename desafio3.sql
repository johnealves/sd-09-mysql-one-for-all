CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.user_name AS usuario,
M.music_name AS nome
FROM
SpotifyClone.spotify_users AS U
INNER JOIN SpotifyClone.play_history AS PH ON U.user_id = PH.user_id
INNER JOIN SpotifyClone.spotify_musics AS M ON M.music_id = PH.music_id
ORDER BY usuario ASC, nome ASC;