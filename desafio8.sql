delimiter $$
create trigger trigger_usuario_delete
before delete on SpotifyClone.usuarios
for each row
begin
delete from SpotifyClone.seguidores as se
where se.usuario_id = old.usuario_id;
delete from SpotifyClone.historico as hi
where hi.usuario_id = old.usuario_id;
end $$
