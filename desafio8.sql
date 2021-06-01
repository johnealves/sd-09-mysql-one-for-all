DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.`user`
FOR EACH ROW
BEGIN
    SET @id = OLD.user_id;
    DELETE FROM SpotifyClone.music_history AS h
    WHERE h.user_id = @id;
    DELETE FROM SpotifyClone.followers AS f
    WHERE f.user_id = @id;
END $$
DELIMITER ;
