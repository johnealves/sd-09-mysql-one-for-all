DELIMITER //
CREATE PROCEDURE albuns_do_artista (IN nome_do_artista VARCHAR(80))
BEGIN
    SELECT
        musician_name AS artista,
        album_name AS album
	FROM SpotifyClone.musician
    JOIN SpotifyClone.album ON album.musician_id = musician.musician_id
    WHERE musician_name = nome_do_artista
    ORDER BY album.album_name;
END //
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
