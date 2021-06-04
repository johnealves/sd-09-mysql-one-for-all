DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM `history`
WHERE users_id = OLD.users_id;
DELETE FROM follow_stars
WHERE users_id = OLD.users_id;
END $$
DELIMITER ;
