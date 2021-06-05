USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
    COUNT(usuario_id)
FROM
    usuarioMusicas
WHERE
    usuario_id = user_id INTO total;
RETURN total;
END $$

DELIMITER ;