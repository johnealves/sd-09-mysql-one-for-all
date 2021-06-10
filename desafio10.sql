
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_ID INT)
 RETURNS INT READS SQL DATA
BEGIN
DECLARE tot_musicas INT;
SELECT COUNT(*)
FROM SpotifyClone.`history`
WHERE users_id = user_ID INTO tot_musicas;
RETURN tot_musicas;
END $$

DELIMITER ;

-- use SpotifyClone;
-- SELECT quantidade_musicas_no_historico(3);
