CREATE VIEW cancoes_premium AS
SELECT
m.nome_musica AS nome,
COUNT(hr.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_de_reproducao AS hr
ON m.musica_id = hr.musica_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = hr.usuario_id
WHERE u.plano_id IN(2, 3)
GROUP BY hr.musica_id
ORDER BY nome ASC;
