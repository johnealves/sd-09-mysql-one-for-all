CREATE VIEW top_3_artistas AS
SELECT
  a.ARTISTA 'artista',
  COUNT(u.NOME) 'seguidores'
FROM
  SEGUIDORES AS s
  JOIN ARTISTAS AS a ON a.ID_ARTISTA = s.ID_ARTISTA
  JOIN USUARIOS AS u ON u.ID_USUARIO = s.ID_USUARIO
GROUP BY
  1
ORDER BY
  2 DESC,
  1 ASC
LIMIT
  3;
