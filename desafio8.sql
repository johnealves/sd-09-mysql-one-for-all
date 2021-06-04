DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.following WHERE following.user_id = old.user_id;
    DELETE FROM SpotifyClone.historic WHERE historic.user_id = old.user_id;
END $$
DELIMITER ;
