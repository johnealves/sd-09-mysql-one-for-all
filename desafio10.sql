DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) AS `quantidade_musicas_no_historico`
  FROM followers AS f
	WHERE f.user_id = 3 INTO total;
  RETURN total;
END $$

DELIMITER;
