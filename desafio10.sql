DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUser VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quant INT;
	SELECT
		COUNT(*) INTO quant
    FROM SpotifyClone.history
    WHERE usuario_id = idUser;
    RETURN quant;
END $$

DELIMITER ;
