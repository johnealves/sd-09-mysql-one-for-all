CREATE VIEW cancoes_premium AS
SELECT cancoes.nome AS nome,
COUNT(historico.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON cancoes.cancao_id = historico.cancao_id
INNER JOIN SpotifyClone.usuarios AS usuarios
ON historico.usuario_id = usuarios.usuario_id AND usuarios.plano_id <> 1
GROUP BY historico.cancao_id
ORDER BY nome;
