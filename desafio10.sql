DELIMITER $$

CREATE FUNCTION `quantidade_musicas_no_historico`(id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE `number_of_songs` INT;
    SELECT COUNT(*) FROM SpotifyClone.`historico_de_reproducao` WHERE usuario_id = id
    INTO `number_of_songs`;
    RETURN `number_of_songs`;
END$$

DELIMITER ;