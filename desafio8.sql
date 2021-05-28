USE spotifyclone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON user
FOR EACH ROW
BEGIN
	DELETE FROM song_historic
    WHERE user_id = OLD.user_id;
    DELETE FROM user_artist
    WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
