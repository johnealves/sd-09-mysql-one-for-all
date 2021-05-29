CREATE VIEW historico_reproducao_usuarios AS
SELECT 
U.usuario AS usuario, 
M.musica AS nome 
FROM SpotifyClone.Historico AS H
INNER JOIN SpotifyClone.Usuarios AS U ON H.usuario_id = U.usuario_id 
INNER JOIN SpotifyClone.Musicas AS M ON H.musica_id = M.musica_id 
ORDER BY usuario ASC, nome ASC;
