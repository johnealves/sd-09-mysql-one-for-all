DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE songs INT;
    SELECT COUNT(*) AS quantidade_musicas_no_historico
    FROM SpotifyClone.stream_history
    WHERE id_user = id 
    INTO songs;
    RETURN songs;
END $$

DELIMITER ;
