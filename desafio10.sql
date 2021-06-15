DELIMITER $$

CREATE FUNCTION quantidade_de_musicas_no_historico(IN id_usuario INT)
RETURNS INT
    READS SQL DATA
BEGIN 
DECLARE total_musicas INT;
SELECT COUNT(usuario_id) FROM historico
WHERE usuario_id = id_usuario INTO total_musicas;
RETURN total_musicas;
END $$

DELIMITER ;
