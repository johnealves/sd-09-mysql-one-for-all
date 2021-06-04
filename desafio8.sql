USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users_table
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.history_table WHERE user_id = OLD.user_id;
	DELETE FROM SpotifyClone.following_artists_table WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
