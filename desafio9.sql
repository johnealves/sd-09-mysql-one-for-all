DELIMITER $ $ CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(200)) BEGIN
SELECT
  a.artist_name AS artista,
  b.album_name AS album
FROM
  SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS b ON a.artist_id = b.artist_id
WHERE
  a.artist_name = name
ORDER BY
  album ASC;
END $ $ DELIMITER;