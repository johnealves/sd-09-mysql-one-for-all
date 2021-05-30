CREATE VIEW top_2_hits_do_momento AS
SELECT mus.nome AS cancao, COUNT(mus.musica_id) AS reproducoes
FROM SpotifyClone.Historico AS his
INNER JOIN SpotifyClone.Musicas AS mus
ON mus.musica_id = his.musica_id
GROUP BY mus.musica_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;