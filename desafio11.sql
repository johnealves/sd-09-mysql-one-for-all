CREATE VIEW cancoes_premium AS 
SELECT 
M.musica AS nome, 
COUNT(H.musica_id) AS reproducoes 
FROM (SELECT * FROM SpotifyClone.Usuarios WHERE plano_id <> 1) AS SU 
INNER JOIN SpotifyClone.Historico AS H ON SU.usuario_id = H.usuario_id 
INNER JOIN SpotifyClone.Musicas AS M ON H.musica_id = M.musica_id 
GROUP BY H.musica_id 
ORDER BY nome ASC;
