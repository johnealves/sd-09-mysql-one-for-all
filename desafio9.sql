DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN name_artist VARCHAR(40))
BEGIN 
	DECLARE id_artist INT;
    SELECT artist_id FROM SpotifyClone.artists WHERE artist_name = name_artist
	INTO id_artist;

	SELECT ar.artist_name, al.album_name FROM SpotifyClone.artists AS ar
	INNER JOIN SpotifyClone.albums AS al
	ON ar.artist_id = id_artist AND al.artist_id = id_artist;
END $$ 

DELIMITER ; 
