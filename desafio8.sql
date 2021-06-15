DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios AS t1
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo WHERE usuario_id = t1.usuario_id
DELETE FROM SpotifyClone.historico WHERE usuario_id = t1.usuario_id;
END $$
DELIMITER;
