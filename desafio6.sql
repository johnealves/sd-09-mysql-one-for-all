create view faturamento_atual as select round(min(pl.valor),2) as 'faturamento_minimo', round(max(pl.valor),2) as 'faturamento_maximo',
round(avg(pl.valor),2) as 'faturamento_medio', round(sum(pl.valor),2) as 'faturamento_total'
from SpotifyClone.planos as pl inner join SpotifyClone.usuarios as us on us.plano_id = pl.plano_id;
