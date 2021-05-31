delimiter $$
create trigger trigger_usuario_delete
before delete on SpotifyClone.usuarios
for each row
begin
delete from SpotifyClone.historico_reproducoes_unicas where usuario_id = old.usuario_id;
delete from SpotifyClone.usuarios_seguindo_artistas where usuario_id = old.usuario_id;
end $$
delimiter ;