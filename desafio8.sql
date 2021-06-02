USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.`history` as h WHERE h.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.`follows` as f WHERE f.usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
