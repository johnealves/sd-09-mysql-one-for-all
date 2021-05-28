create view historico_reproducao_usuarios as select us.nome as 'usuario', mu.nome as nome from SpotifyClone.musicas as mu
inner join historico as hi on hi.musica_id = mu.musica_id 
inner join SpotifyClone.usuarios as us on us.usuario_id = hi.usuario_id
order by `usuario`, nome;

