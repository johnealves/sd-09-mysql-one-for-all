DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
	AFTER DELETE ON SpotifyClone.usuario
    FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.user_reproducoes WHERE id_usuario = old.id_usuario;
	DELETE FROM SpotifyClone.user_seguindo WHERE id_usuario = old.id_usuario;
END $$
    DELIMITER ;