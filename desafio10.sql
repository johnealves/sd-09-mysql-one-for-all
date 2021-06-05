USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_ID int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT
COUNT(*) FROM SpotifyClone.history WHERE user_id = user_ID INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
