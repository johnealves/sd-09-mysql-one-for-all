USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(35))
BEGIN
   SELECT art.artist_name AS 'artista', al.album_name AS 'album'
    FROM SpotifyClone.artists_table AS art
    JOIN SpotifyClone.albums_table AS al ON art.artist_id = al.artist_id
    WHERE art.artist_name = artist_name;
END $$

DELIMITER ;
