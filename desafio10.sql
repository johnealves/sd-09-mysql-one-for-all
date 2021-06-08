DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_musicas INT;
  SELECT COUNT(cancao_id)
	FROM Historico
	WHERE usuario_id = usuario INTO total_musicas; 
  RETURN total_musicas;
END $$
DELIMITER ;
