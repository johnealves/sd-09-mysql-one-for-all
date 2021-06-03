DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
	SELECT art.nome AS artista, alb.nome AS album 
    FROM SpotifyClone.album as alb 
    INNER JOIN SpotifyClone.artista as art ON alb.id_artista = art.id_artista
    WHERE art.nome = nome_artista ;
END $$

DELIMITER ;
