CREATE VIEW top_3_artistas AS
SELECT
  a.artist_name AS artista,
  COUNT(f.user_id) AS seguidores
FROM
  SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.follow AS f ON a.artist_id = f.artist_id
GROUP BY
  a.artist_id
ORDER BY
  seguidores DESC,
  artista ASC
LIMIT
  3;