USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(u_ID int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT
COUNT(*) FROM SpotifyClone.history WHERE user_id = u_ID INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
