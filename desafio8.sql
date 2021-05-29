delimiter $$
create trigger trigger_usuario_delete
before delete on SpotifyClone.usuarios
for each row
begin
delete from SpotifyClone.seguidores
where usuario_id = old.usuario_id;
delete from SpotifyClone.historico
where usuario_id = old.usuario_id;
end $$

delimiter ;