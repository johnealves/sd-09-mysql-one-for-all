CREATE VIEW perfil_artistas AS
SELECT
	A.artista AS 'artista',
  AB.album AS 'album',
  COUNT(SA.usuario_id) AS 'seguidores'
FROM SpotifyClone.albuns AS AB
INNER JOIN SpotifyClone.artistas AS A ON AB.artista_id = A.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS SA ON SA.artista_id = AB.artista_id
GROUP BY A.artista_id, AB.album
ORDER BY 3 DESC, 1, 2;
