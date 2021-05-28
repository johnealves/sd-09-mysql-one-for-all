create view top_2_hits_do_momento as 
select mu.nome as 'cancao', count(hi.musica_id) as 'reproducoes'
from SpotifyClone.musicas as mu inner join historico as hi on hi.musica_id = mu.musica_id
group by hi.musica_id
order by `reproducoes` desc, `cancao` asc
limit 2;
