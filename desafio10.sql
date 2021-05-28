USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(`user` INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico FROM SpotifyClone.play_history 
WHERE user_id = `user` INTO total_songs;
RETURN total_songs;
END$$
DELIMITER ;
