USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN 
SELECT 
artists.name AS "artista",
albums.name AS "album"
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albums AS albums
ON artists.artist_id = albums.artist_id
WHERE artists.name = nome_artista
;

END $$

DELIMITER ;

CALL albuns_do_artista("Walter Phoenix");
