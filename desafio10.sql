USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE total_musicas INT;
    SELECT COUNT(*) FROM historico_cancoes hc
    INNER JOIN usuarios u ON u.usuario_id = hc.usuario_id
    WHERE u.usuario_id = id INTO total_musicas;
    RETURN total_musicas;
  END $$

DELIMITER ;
