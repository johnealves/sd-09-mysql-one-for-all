USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuario
FOR EACH ROW 
BEGIN
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM Reproducao WHERE usuario_id = OLD.usuario_id;
    DELETE FROM Seguindo WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
