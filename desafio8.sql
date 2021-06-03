USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.playlist_history WHERE usuario_id = OLD.usuario_id;
	DELETE FROM SpotifyClone.user_follows WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
