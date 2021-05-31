delimiter $$
create function quantidade_musicas_no_historico(nome_usuario varchar(100))
returns tinyint reads sql data
begin
declare quantidade_musicas tinyint;
select count(hi.musica_id) as quantidade_musicas_no_historico
from SpotifyClone.historico as hi
inner join SpotifyClone.usuarios as us on us.usuario_id = hi.usuario_id
where us.nome =  nome_usuario
into quantidade_musicas;
return quantidade_musicas;
end $$
