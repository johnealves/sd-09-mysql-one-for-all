DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.`history`
WHERE `history`.users_id = OLD.users_id;
DELETE FROM SpotifyClone.follow_stars
WHERE follow_stars.users_id = OLD.users_id;
END $$

DELIMITER ;
