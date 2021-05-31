DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN singer_name VARCHAR(100))
BEGIN
    SELECT s.singer_name AS artista, a.album_name AS album
    FROM SpotifyClone.album AS a
    INNER JOIN SpotifyClone.singer AS s ON a.singer_id = s.singer_id
    WHERE s.singer_name = singer_name
    ORDER BY a.album_name;
END $$

DELIMITER ;
