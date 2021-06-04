USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON usuarios
  FOR EACH ROW
  BEGIN
    DELETE FROM usuario_seguindo_artistas WHERE OLD.usuario_id = usuario_id;
    DELETE FROM historico_cancoes WHERE OLD.usuario_id = usuario_id;
  END $$

DELIMITER ;
