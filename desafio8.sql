DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico AS T1
WHERE OLD.usuario_id = T1.usuario_id;
DELETE FROM SpotifyClone.Seguindo AS T2
WHERE OLD.usuario_id = T2.usuario_id;
END $$

DELIMITER ;
