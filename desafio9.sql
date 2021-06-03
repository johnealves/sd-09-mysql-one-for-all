DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
	SELECT 
		a.artista,
		al.album
	FROM
		artista AS a
	INNER JOIN 
		album AS al
	ON al.artista_id = a.id
	WHERE a.artista = artista
	ORDER BY album;
END $$

DELIMITER ;
