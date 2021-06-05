USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM seguindoArtistas 
WHERE usuario_id = OLD.usuario_id;
DELETE FROM usuarioMusicas
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;