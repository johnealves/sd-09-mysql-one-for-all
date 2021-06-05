DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total_musicas INT;
    SELECT COUNT(usuario_id) FROM SpotifyClone.historico WHERE usuario_id = usuarioID GROUP BY usuario_id INTO total_musicas;
    RETURN total_musicas;
END $$
DELIMITER ;
