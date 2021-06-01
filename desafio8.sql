DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    AFTER DELETE ON SpotifyClone.usuarios FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.seguindo_artistas
    WHERE OLD.usuario_id = usuario_id;
    DELETE FROM SpotifyClone.seguindo_artistas
    WHERE OLD.usuario_id = usuario_id;
END $$
DELIMITER ;
