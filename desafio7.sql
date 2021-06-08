CREATE VIEW perfil_artistas AS
SELECT
  s.singer_name AS `artista`,
  a.album_name AS `album`,
  (  
    SELECT COUNT(f.singer_id)
    FROM followers AS f
    WHERE f.singer_id = s.singer_id 
  ) AS `seguidores`
FROM singers AS s
INNER JOIN albums as a
  ON a.singer_id = s.singer_id
ORDER BY `seguidores` DESC, `artista`, `album`;