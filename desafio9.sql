DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(150))
BEGIN
	SELECT 
		a.artista, 
        al.album 
	FROM SpotifyClone.artista as a
	INNER JOIN 
		SpotifyClone.album as al 
        ON al.artista_id = a.artista_id
WHERE a.artista = artistName
ORDER BY al.album;
END $$
DELIMITER ;
