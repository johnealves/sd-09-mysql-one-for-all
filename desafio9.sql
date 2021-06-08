DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN singer_name VARCHAR(100))
BEGIN
  SELECT
    s.singer_name AS `artista`,
    a.album_name AS `album`
  FROM singers AS s
  INNER JOIN albums AS a
    ON a.singer_id = s.singer_id
  WHERE s.singer_name = singer_name
  ORDER BY `album`;
END $$

DELIMITER ;