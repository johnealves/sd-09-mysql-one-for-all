CREATE VIEW cancoes_premium AS
	SELECT
		s.song_name AS 'nome',
    COUNT(h.song_id) AS 'reproducoes'
  FROM SpotifyClone.history AS h
  JOIN SpotifyClone.song AS s ON h.song_id = s.song_id
  JOIN SpotifyClone.users AS u ON h.usuario_id = u.usuario_id
  WHERE u.plan_id != 1
  GROUP BY 1
  ORDER BY 1;