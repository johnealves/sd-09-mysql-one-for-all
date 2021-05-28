CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.`name` AS usuario,
s.name AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.play_history AS p
ON u.user_id = p.user_id
INNER JOIN SpotifyClone.songs AS s
ON p.song_id = s.song_id
ORDER BY usuario, nome;