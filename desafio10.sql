DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE songs_total INT;
    SELECT COUNT(*)
    FROM SpotifyClone.ReproductionHistory
    WHERE SpotifyClone.ReproductionHistory.user_id = userId INTO songs_total;
    RETURN songs_total;
END $$

DELIMITER ;
