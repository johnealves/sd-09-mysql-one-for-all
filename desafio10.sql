DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userid INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_songs INT;
	SELECT COUNT(*)
	FROM SpotifyClone.songs_history
	WHERE user_id = userid
    INTO total_songs;
    RETURN total_songs;
END $$

DELIMITER ;
