USE SpotifyClone;

DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON users 
FOR EACH ROW 
BEGIN 
    DELETE FROM users_songs WHERE user_id = OLD.id;
    DELETE FROM users_singers WHERE user_id = OLD.id;
END $$
 
DELIMITER  ; 