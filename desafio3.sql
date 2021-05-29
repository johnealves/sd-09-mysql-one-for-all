create view historico_reproducao_usuarios as
select us.usuario, ca.cancao
from usuarios as us, cancoes as ca, historico_reproducoes_unicas as hru
where us.usuario_id = hru.usuario_id and ca.cancao_id = hru.cancao_id
order by us.usuario, ca.cancao;