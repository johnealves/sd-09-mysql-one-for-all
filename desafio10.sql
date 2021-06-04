DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_musics INT;
    SELECT COUNT(user_id) FROM SpotifyClone.historic WHERE user_id = userID GROUP BY user_id INTO total_musics;
    RETURN total_musics;
END $$

DELIMITER ;