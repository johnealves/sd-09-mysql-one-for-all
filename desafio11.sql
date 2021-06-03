CREATE VIEW cancoes_premium AS
SELECT 
	musica AS `nome`,
    COUNT(hr.musica_id) AS `reproducoes`
FROM 
	musica AS m
INNER JOIN
	historico_reproducoes AS hr
ON hr.musica_id = m.id
INNER JOIN 
	usuario AS u
ON u.id = hr.usuario_id
WHERE u.plano_id In(2, 3)
GROUP BY `nome`
ORDER BY `nome`;