DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE number_of_songs INT;
    SELECT COUNT(*) FROM SpotifyClone.`history` AS h
    WHERE h.user_id = user_id INTO number_of_songs;
    RETURN number_of_songs;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(1);
