CREATE VIEW perfil_artistas AS
SELECT 
  ar.artist_name AS 'artista', 
  al.album_name AS 'album',
  ( 
    SELECT COUNT(artist_id) FROM SpotifyClone.followers 
    WHERE ar.artist_id = artist_id
  ) AS 'seguidores'
  FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id
ORDER BY `seguidores` DESC, `artista`, `album`;
