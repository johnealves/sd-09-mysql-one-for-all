CREATE VIEW perfil_artistas AS
  SELECT a.artista AS `artista`, al.album AS `album`, COUNT(s.artista_id) AS `seguidores` FROM SpotifyClone.artista AS a
  INNER JOIN SpotifyClone.album as al ON al.artista_id = a.artista_id
  INNER JOIN SpotifyClone.seguindo as s ON s.artista_id = a.artista_id
  GROUP BY `album`, `artista`
  ORDER BY `seguidores` DESC, `artista`, `album`;

