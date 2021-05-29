CREATE VIEW cancoes_premium AS
SELECT s.song_title AS nome,
  COUNT(s.song_id) AS reproducoes
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plan AS p
ON u.plan_id = p.plan_id
INNER JOIN SpotifyClone.historic AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.song AS s
ON s.song_id = h.song_id
WHERE p.plan_title = 'familiar'
OR p.plan_title = 'universitário'
GROUP BY nome
ORDER BY 1;
