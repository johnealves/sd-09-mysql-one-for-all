create view faturamento_atual as
SELECT 
round(min(valor_plano), 2) as faturamento_minimo,
round(max(valor_plano), 2) as faturamento_maximo,
round(avg(plan.valor_plano), 2) as faturamento_medio,
round(sum(plan.valor_plano), 2) as faturamento_total
FROM SpotifyClone.usuarios as usuario
join SpotifyClone.planos as plan on plan.plano_nome = usuario.plano_nome;
