USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT 
	a.name AS 'artista',
	al.name AS 'album'
FROM artist AS a
JOIN album AS al ON a.artist_id = al.artist_id
    WHERE a.name = nome;
END $$

DELIMITER ;
