CREATE VIEW perfil_artistas AS
SELECT
  a.artist_name AS artista,
  b.album_name AS album,
  COUNT(*) AS seguidores
FROM
  SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS b ON b.artist_id = a.artist_id
  INNER JOIN SpotifyClone.follow AS f ON f.artist_id = a.artist_id
GROUP BY
  b.album_id
ORDER BY
  seguidores DESC,
  artista ASC,
  album ASC;