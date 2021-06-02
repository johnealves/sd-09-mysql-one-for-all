USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.history as h WHERE OLD.usuario_id = h.usuario_id;
DELETE FROM SpotifyClone.follows as f WHERE OLD.usuario_id = f.usuario_id;
END $$

DELIMITER ;
