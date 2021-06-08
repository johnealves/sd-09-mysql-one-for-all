CREATE VIEW top_3_artistas AS
SELECT
  s.singer_name AS `artista`,
  COUNT(f.singer_id) AS `seguidores`
FROM singers AS s
INNER JOIN followers AS f
  ON f.singer_id = s.singer_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;