delimiter $$
create procedure albuns_do_artista(in nome_artista varchar(100))
begin
select ar.nome as 'artista', al.nome as 'album'
from SpotifyClone.artistas as ar 
inner join SpotifyClone.albuns as al
on al.artista_id = ar.artista_id
where ar.nome = nome_artista
order by `album`;
end $$

delimiter ;