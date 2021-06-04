USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
   SELECT a.`name` AS 'artista', al.album_name AS 'album'
    FROM SpotifyClone.stars AS a
    JOIN spotifyClone.album AS al ON a.stars_id = al.stars_id
    WHERE `name` = artista;
END $$

DELIMITER ;