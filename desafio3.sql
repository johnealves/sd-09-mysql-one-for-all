CREATE VIEW historico_reproducao_usuarios AS
SELECT usu.usuario, mus.nome
FROM SpotifyClone.Historico AS his
INNER JOIN SpotifyClone.Usuarios AS usu
ON his.usuario_id = usu.usuario_id
INNER JOIN SpotifyClone.Musicas AS mus
ON his.musica_id = mus.musica_id
ORDER BY usu.usuario, mus.nome;