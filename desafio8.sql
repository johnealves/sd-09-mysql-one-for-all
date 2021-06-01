DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.`user`
FOR EACH ROW
BEGIN
    SET @id = OLD.user_id;
    DELETE h, f
    FROM SpotifyClone.music_history AS h, SpotifyClone.followers AS f
    WHERE h.user_id = @id AND h.user_id = f.user_id;
END $$
DELIMITER ;
