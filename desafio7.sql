create view perfil_artistas as select ar.nome as 'artista', al.nome as 'album' ,
count(se.usuario_id) as 'seguidores' from SpotifyClone.artistas as ar
inner join SpotifyClone.albuns as al on al.artista_id = ar.artista_id
inner join SpotifyClone.seguidores as se on se.artista_id = ar.artista_id
group by se.artista_id, al.nome
order by `seguidores` desc, `artista`, `album`;
