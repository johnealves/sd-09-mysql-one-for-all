CREATE VIEW SpotifyClone.perfil_artistas AS
  SELECT ar.nome AS 'artista',
      al.album AS 'album',
      COUNT(sa.usuario_id) AS 'seguidores'
    FROM SpotifyClone.seguindo_artistas AS sa
      INNER JOIN SpotifyClone.albums AS al ON al.artista_id = sa.artista_id
      INNER JOIN SpotifyClone.artistas AS ar ON ar.artista_id = sa.artista_id
    GROUP BY 1, 2
    ORDER BY 3 DESC, 1, 2;