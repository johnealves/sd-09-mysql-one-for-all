CREATE VIEW perfil_artistas AS
	SELECT
		a.nome AS artista,
    al.titulo AS album,
    COUNT(s.artista_id) AS seguidores
	FROM SpotifyClone.Albums AS al
  INNER JOIN SpotifyClone.Artistas AS a ON a.artista_id = al.artista_id
  INNER JOIN SpotifyClone.Seguindo_artistas AS s ON s.artista_id = al.artista_id
  GROUP BY a.nome, al.titulo
  ORDER BY seguidores DESC, artista, album;
