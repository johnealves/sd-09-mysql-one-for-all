CREATE VIEW historico_reproducao_usuarios AS
SELECT
	U.usuario AS 'usuario',
  C.cancao AS 'nome'
FROM SpotifyClone.historico_de_reproducao AS HR
INNER JOIN SpotifyClone.usuarios AS U ON HR.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.cancoes AS C ON HR.cancao_id = C.cancao_id
ORDER BY 1, 2;
