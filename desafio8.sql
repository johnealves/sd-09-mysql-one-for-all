USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.artistas_seguindo WHERE usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.historico_reproducao WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;