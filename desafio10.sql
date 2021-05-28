DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeTotal INT;
SELECT
COUNT(*)
FROM SpotifyClone.play_history
WHERE user_id = userID
INTO quantidadeTotal;
RETURN quantidadeTotal;
END $$

DELIMITER ;