/* Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas
 que estão presentes atualmente no histórico de reprodução de uma pessoa usuária.
 Ao receber o código identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução. */

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) FROM track_record WHERE user_id = userId INTO total;
  RETURN total;
END $$

DELIMITER ;
