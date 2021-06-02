USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (userId INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtMusic INT;
  SELECT COUNT(`user_id`) AS `quantidade_musicas_no_historico` FROM SpotifyClone.History WHERE `user_id` = userId
  INTO qtMusic;
  RETURN qtMusic;
END $$
DELIMITER ;
