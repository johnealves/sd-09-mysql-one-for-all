CREATE VIEW historico_reproducao_usuarios AS
SELECT usuarios.nome AS 'usuario',
cancoes.nome As 'nome'
FROM SpotifyClone.historico_de_reproducoes AS historico
INNER JOIN SpotifyClone.usuarios AS usuarios
ON historico.usuario_id = usuarios.usuario_id
INNER JOIN SpotifyClone.cancoes AS cancoes
ON historico.cancao_id = cancoes.cancao_id
ORDER BY usuarios.nome, cancoes.nome;
