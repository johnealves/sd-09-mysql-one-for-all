USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
   SELECT a.artista_nome AS 'artista', al.album_nome AS 'album'
    FROM SpotifyClone.artists AS a
    JOIN SpotifyClone.albums AS al ON a.artista_id = al.artista_id
    WHERE artista_nome = artista;
END $$

DELIMITER ;
