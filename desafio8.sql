DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo AS t2 WHERE t2.usuario_id = t1.usuario_id
DELETE FROM SpotifyClone.historico AS t3 WHERE t3.  usuario_id = t1.usuario_id;
END $$
DELIMITER ;
