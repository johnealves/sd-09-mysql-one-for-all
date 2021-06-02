DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.historico_de_reproducoes
  WHERE historico_de_reproducoes.usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.seguindo_artista
  WHERE seguindo_artista.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
