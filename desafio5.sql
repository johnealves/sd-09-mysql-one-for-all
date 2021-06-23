CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica AS `cancao`, COUNT(m.musica) AS `reproducoes`
FROM SpotifyClone.musica AS m
JOIN SpotifyClone.historico_de_reproducao AS hr ON m.musica_id = hr.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2
