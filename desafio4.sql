create view top_3_artistas as
select ar.nome as 'artista', count(se.usuario_id) as 'seguidores' from SpotifyClone.artistas as ar
inner join seguidores as se on se.artista_id = ar.artista_id
group by  se.artista_id
order by `seguidores` desc, `artista` asc
limit 3;