CREATE VIEW top_3_artistas AS
SELECT
	A.artista AS 'artista',
  COUNT(U.usuario_id) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas AS SA
INNER JOIN SpotifyClone.artistas AS A ON SA.artista_id = A.artista_id
INNER JOIN SpotifyClone.usuarios AS U ON SA.usuario_id = U.usuario_id
GROUP BY A.artista
ORDER BY 2 DESC, 1 ASC;
