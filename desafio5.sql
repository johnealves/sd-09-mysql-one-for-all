CREATE VIEW top_2_hits_do_momento AS
SELECT
    m.musica AS 'cancao',
    COUNT(hr.musica_id) AS `reproducoes`
FROM
	historico_reproducoes AS hr
INNER JOIN
	musica as m
ON m.id = hr.musica_id
GROUP BY m.musica
ORDER BY  `reproducoes` DESC, m.musica
LIMIT 2;
