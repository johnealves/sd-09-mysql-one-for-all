DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount INT;
    SELECT COUNT(h.user_id) INTO amount
    FROM SpotifyClone.music_history AS h
    INNER JOIN SpotifyClone.`user` AS u ON u.user_id = h.user_id
    WHERE u.user_id = user_id;
    RETURN amount;
END $$
DELIMITER ;
