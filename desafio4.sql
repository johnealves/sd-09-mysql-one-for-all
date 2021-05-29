CREATE VIEW top_3_artistas AS
  SELECT a.artist_name AS artista,
    COUNT(u.user_name) AS seguidores
  FROM SpotifyClone.followers AS f
  INNER JOIN SpotifyClone.artist AS a
  ON f.artist_id = a.artist_id
  INNER JOIN SpotifyClone.users AS u
  ON f.user_id = u.user_id
  GROUP BY a.artist_name
  ORDER BY 2 DESC, 1
  LIMIT 3;
