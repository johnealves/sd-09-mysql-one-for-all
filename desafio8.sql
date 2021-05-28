DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.spotify_users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.play_history WHERE OLD.user_id = user_id;
DELETE FROM SpotifyClone.followed_artists WHERE OLD.user_id = user_id;
END $$

DELIMITER ;