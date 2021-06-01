 CREATE VIEW historico_reproducao_usuarios AS
 SELECT USUARIO.usuario_name AS 'usuario',
		CANCAO.cancao_name AS 'nome'
FROM SpotifyClone.historico_reproducao AS HISTORICO
INNER JOIN SpotifyClone.usuario AS USUARIO ON HISTORICO.usuario_id = USUARIO.usuario_id
INNER JOIN SpotifyClone.cancoes AS CANCAO ON HISTORICO.cancao_id = CANCAO.cancao_id
ORDER BY 1,2;