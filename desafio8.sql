USE SpotifyClone;

DELIMITER $$ 
create trigger trigger_usuario_delete
after delete on usuarios
FOR each row
BEGIN
delete from SpotifyClone.seguindo where usuario_id = old.usuario_id;
delete from SpotifyClone.historico_reproducao where usuario_id = old.usuario_id;
END $$

DELIMITER ;