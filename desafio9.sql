DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN name_artist INT)
BEGIN 
	SELECT ar.artist_name, album_name FROM SpotifyClone.artists AS ar
	INNER JOIN SpotifyClone.albums AS al
	ON ar.artist_id = name_artist AND al.artist_id = name_artist;
END $$ 

DELIMITER ; 

