DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuarioID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) FROM SpotifyClone.historico_de_reproducao
WHERE usuario_id = usuarioID INTO total;
RETURN total;
END $$

DELIMITER ;
