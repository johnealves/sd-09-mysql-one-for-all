CREATE VIEW cancoes_premium AS
SELECT 
s.name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.play_history AS h
INNER JOIN SpotifyClone.songs AS s
ON h.song_id = s.song_id
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.plans AS p
ON u.plans_id = p.plans_id
WHERE p.name IN ('familiar', 'universitário')
GROUP BY nome
ORDER BY nome;
