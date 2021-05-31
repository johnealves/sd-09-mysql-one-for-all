DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.`user`
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.play_history WHERE user_id = OLD.user_id;
    DELETE FROM SpotifyClone.follow_history WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
