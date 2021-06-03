USE spotifyclone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN artista VARCHAR(100))
BEGIN
	SELECT artista, albums.title AS album FROM albums
    INNER JOIN artists ON albums.artist_id = artists.artist_id
    WHERE artista = artists.name
    ORDER BY albums.title ASC;
END $$

DELIMITER ;
