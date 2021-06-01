DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.historico_reproducao WHERE historico_reproducao.usuario_id = OLD.id;
	DELETE FROM SpotifyClone.seguindo_artista WHERE seguindo_artista.usuario_id = OLD.id;
END $$

DELIMITER ;
