USE SpotifyClone;

SELECT
T2.usuario AS 'usuario',
T3.cancao AS 'nome'
FROM Historico AS T1
INNER JOIN Usuario AS T2
ON T1.usuario_id = T2.usuario_id
INNER JOIN Cancao AS T3
ON T1.cancao_id = T3.cancao_id
ORDER BY `usuario` ASC, `nome` ASC;
