CREATE VIEW cancoes_premium
AS SELECT 
T1.cancao AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Cancao AS T1
INNER JOIN SpotifyClone.Historico AS T2
ON T1.cancao_id = T2.cancao_id
INNER JOIN SpotifyClone.Usuario AS T3
ON T2.usuario_id = T3.usuario_id
INNER JOIN SpotifyClone.Plano AS T4
ON T3.plano_id = T4.plano_id
WHERE T4.plano IN ('familiar', 'universitário')
GROUP BY `nome`
ORDER BY `nome` ASC;
