CREATE VIEW top_3_artistas AS
  SELECT
		a.nome AS artista,
		COUNT(s.artista_id) AS seguidores
	FROM SpotifyClone.Seguindo_artistas AS s
  INNER JOIN SpotifyClone.Artistas AS a ON a.artista_id = s.artista_id
  GROUP BY a.artista_id
  ORDER BY seguidores DESC, artista
  LIMIT 3;
