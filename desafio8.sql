USE SpotifyClone;
DELIMITER $$

DROP TRIGGER IF EXISTS trigger_usuario_delete;
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM usuario_artista WHERE usuario_id = OLD.usuario_id;
DELETE FROM usuario_cancao WHERE usuario_id = OLD.usuario_id;
DELETE FROM usuario_plano WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
