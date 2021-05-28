create view estatisticas_musicais as select count(mu.musica_id) as 'cancoes',
count(distinct ar.artista_id) as 'artistas', count(distinct al.album_id) as 'albuns' from
SpotifyClone.albuns as al inner join SpotifyClone.artistas as ar on ar.artista_id = al.artista_id
inner join SpotifyClone.musicas as mu on mu.album_id = al.album_id;
