delimiter $$
create procedure albuns_do_artista(IN nome_artista varchar(80))
begin
select ar.artista, al.album
from artistas as ar, albuns as al
where ar.artista_id = al.artista_id AND ar.artista = nome_artista
order by al.album ASC;
end $$
delimiter ;

call albuns_do_artista('Walter Phoenix');