CREATE VIEW cancoes_premium AS
SELECT c.cancao_nome AS nome,
COUNT(h.historico_id) reproducoes FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE u.plano_id = 2 OR u.plano_id = 3
GROUP BY c.cancao_nome
ORDER BY c.cancao_nome;
