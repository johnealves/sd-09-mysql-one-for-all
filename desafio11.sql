CREATE VIEW cancoes_premium AS
SELECT
    can.cancao_nome AS nome,
    COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS hr
	INNER JOIN SpotifyClone.cancao AS can ON can.cancao_id = hr.cancao_id
	INNER JOIN SpotifyClone.usuario AS usu ON hr.usuario_id = usu.usuario_id AND usu.plano_id <> 1
GROUP BY nome
ORDER BY nome;
