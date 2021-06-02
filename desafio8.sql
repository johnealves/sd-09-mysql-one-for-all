DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.UserFollowing WHERE user_id = OLD.user_id;
    DELETE FROM SpotifyClone.ReproductionHistory WHERE user_id = OLD.user_id;
END $$ 

DELIMITER ;
