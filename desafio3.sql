CREATE VIEW historico_reproducao_usuarios
AS SELECT
T2.usuario AS 'usuario',
T3.cancao AS 'nome'
FROM SpotifyClone.Historico AS T1
INNER JOIN SpotifyClone.Usuario AS T2
ON T1.usuario_id = T2.usuario_id
INNER JOIN SpotifyClone.Cancao AS T3
ON T1.cancao_id = T3.cancao_id
ORDER BY `usuario` ASC, `nome` ASC;
