DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.Historicos WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.Seguidores WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
