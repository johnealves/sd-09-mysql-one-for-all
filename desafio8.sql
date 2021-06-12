use SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.follow_stars
WHERE users_id = OLD.users_id; 
DELETE FROM SpotifyClone.`history` 
WHERE users_id = OLD.users_id;
END $$

DELIMITER ;

-- use SpotifyClone;
-- DELETE FROM users
-- WHERE user_name = 'Thati';

-- SET SQL_SAFE_UPDATES = 0;

-- SELECT * from users;