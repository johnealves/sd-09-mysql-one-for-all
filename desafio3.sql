CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome
FROM SpotifyClone.historico_de_reproducoes hr
INNER JOIN SpotifyClone.usuarios u ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes c ON hr.cancao_id = c.cancao_id
ORDER BY u.usuario ASC, c.cancao ASC;
