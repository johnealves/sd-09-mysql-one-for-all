CREATE VIEW cancoes_premium AS
SELECT mus.nome AS nome, COUNT(his.musica_id) AS reproducoes
FROM SpotifyClone.Historico AS his
INNER JOIN SpotifyClone.Musicas AS mus
ON mus.musica_id = his.musica_id
INNER JOIN SpotifyClone.Usuarios AS usu
ON his.usuario_id = usu.usuario_id AND usu.plano_id <> 1
GROUP BY nome
ORDER BY nome;
