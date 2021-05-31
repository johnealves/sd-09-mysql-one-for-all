USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuario INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE resultado INT;
    
	SELECT COUNT(*) FROM Reproducao
    WHERE usuario_id = usuario  INTO RESULTADO;
    
    RETURN resultado;

END $$

DELIMITER ;
