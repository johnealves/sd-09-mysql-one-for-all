CREATE VIEW SpotifyClone.top_3_artistas AS
  SELECT a.nome AS 'artista',
    COUNT(sa.usuario_id) AS 'seguidores'
  FROM SpotifyClone.seguindo_artistas AS sa
    INNER JOIN SpotifyClone.artistas AS a ON a.artista_id = sa.artista_id
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 3;
