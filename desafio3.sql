CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario',
m.musica AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.usuarioMusicas AS um
ON u.usuario_id = um.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON m.musica_id = um.musica_id
ORDER BY u.usuario, m.musica ASC;