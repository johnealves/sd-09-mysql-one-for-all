USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE history_count INT;
  SELECT 
      COUNT(*)
  FROM
      SpotifyClone.reproduction_history
  WHERE
      user_id = id INTO history_count;
  RETURN history_count;
END $$

DELIMITER ;
