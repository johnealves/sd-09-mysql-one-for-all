USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Seguindo WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.Historico WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;