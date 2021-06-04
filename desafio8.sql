
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM follow_stars
WHERE users_id = OLD.users_id;
DELETE FROM `history`
WHERE users_id = OLD.users_id;
END $$
DELIMITER ;

DELETE FROM SpotifyClone.users
WHERE user_name = "Thati";