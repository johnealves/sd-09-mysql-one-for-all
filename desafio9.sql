DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(45))
BEGIN
	SELECT 
		nome_artista AS artista,
		nome_album AS album
	FROM
		SpotifyClone.albuns AS alb
		
	INNER JOIN
	SpotifyClone.artistas AS art ON alb.id_artista = art.id_artista
    
    WHERE art.nome_artista = nome_artista

	ORDER BY album;
END $$

DELIMITER ;

-- CALL albuns_do_artista('Walter Phoenix');
