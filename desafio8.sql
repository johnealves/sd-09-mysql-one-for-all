DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete BEFORE DELETE
ON SpotifyClone.users
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.following
		WHERE id_user = OLD.id_user;
    DELETE FROM SpotifyClone.stream_history
		WHERE id_user = OLD.id_user;
END $$

DELIMITER ;
