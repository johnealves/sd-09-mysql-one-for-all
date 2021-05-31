USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id_do_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) FROM SpotifyClone.usuario_cancao
WHERE usuario_id = id_do_usuario
GROUP BY usuario_id INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
