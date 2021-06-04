CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica AS cancao,
(SELECT COUNT(m.musica_id)) AS reproducoes
FROM SpotifyClone.musicas as m
INNER JOIN SpotifyClone.usuarioMusicas as um
ON m.musica_id = um.musica_id
GROUP BY m.musica
ORDER BY 2 DESC, m.musica ASC
LIMIT 2;