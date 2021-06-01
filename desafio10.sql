DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_name VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount INT;
    SELECT COUNT(h.user_id) INTO amount
    FROM SpotifyClone.music_history AS h
    INNER JOIN SpotifyClone.`user` AS u ON u.user_id = h.user_id
    WHERE u.user_name LIKE user_name;
    RETURN amount;
END $$
DELIMITER ;
