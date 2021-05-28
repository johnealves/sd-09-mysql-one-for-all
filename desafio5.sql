CREATE VIEW top_2_hits_do_momento AS
SELECT
M.music_name AS cancao,
COUNT(PH.user_id) AS reproducoes
FROM
SpotifyClone.spotify_musics AS M
INNER JOIN SpotifyClone.play_history AS PH ON M.music_id = PH.music_id
GROUP BY M.music_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;