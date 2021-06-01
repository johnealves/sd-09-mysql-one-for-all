DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_reproducao WHERE historico_reproducao.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguindo_artistas 
WHERE
    seguindo_artistas.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;