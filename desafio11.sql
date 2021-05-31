create view cancoes_premium as
select mu.nome as 'nome', count(hi.musica_id) as 'reproducoes' from SpotifyClone.musicas as mu
inner join SpotifyClone.historico as hi on hi.musica_id = mu.musica_id
inner join SpotifyClone.usuarios as us on us.usuario_id = hi.usuario_id
where us.plano_id = 2 or us.plano_id = 3
group by hi.musica_id
order by `nome` asc;
