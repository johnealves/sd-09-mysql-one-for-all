CREATE VIEW perfil_artistas AS
SELECT ar.artist_name AS artista,
  al.album_title AS album,
  COUNT(ar.artist_id) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.followers AS f
ON f.artist_id = ar.artist_id
GROUP BY ar.artist_name, album_title
ORDER BY 3 DESC, 1, 2;
