DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(param_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_musicas INT;
  SELECT COUNT(song_id) INTO total_musicas
  FROM SpotifyClone.historic
  WHERE user_id = param_id;
  RETURN total_musicas;
END $$
DELIMITER ;
