CREATE VIEW cancoes_premium AS
SELECT c.cancao_nome AS `nome`,
COUNT(uh.cancao_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.usuario_historico AS uh ON uh.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u ON uh.usuario_id = u.usuario_id
WHERE u.plano_id <> 1
GROUP BY `nome`
ORDER BY `nome` ASC;
