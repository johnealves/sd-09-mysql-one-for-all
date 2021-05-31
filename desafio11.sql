create view cancoes_premium as
select ca.cancao as `nome`, count(hru.cancao_id) as `reproducoes`
from
historico_reproducoes_unicas as hru,
cancoes as ca,
usuarios as us
where
ca.cancao_id = hru.cancao_id
AND
hru.usuario_id = us.usuario_id
AND
us.plano_id in (2, 3)
group by ca.cancao
order by ca.cancao ASC;
