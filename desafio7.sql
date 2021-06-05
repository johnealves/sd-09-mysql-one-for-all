CREATE VIEW perfil_artistas AS
SELECT
  art.artist_name AS artista,
  alb.album_name AS album,
  COUNT(flw.user_id) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.followin_artists AS flw ON art.artist_id = flw.artist_id
GROUP BY art.artist_id , alb.album_id
ORDER BY 3 DESC , 1 ASC , 2 ASC;
