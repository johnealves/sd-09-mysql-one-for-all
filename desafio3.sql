CREATE VIEW historico_reproducao_usuario AS
SELECT
u.usuario_nome AS usuario,
c.cancao_nome AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.usuario_historico AS uh ON uh.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = uh.cancao_id
ORDER BY `usuario`;
