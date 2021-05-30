-- INNER JOIN
-- CREATE VIEW historico_reproducao_usuarios AS
-- 	SELECT U.nome AS usuario, C.titulo AS nome FROM SpotifyClone.usuario_cancao AS UC
-- 	INNER JOIN SpotifyClone.usuarios AS U ON U.usuario_id = UC.usuario_id
-- 	INNER JOIN SpotifyClone.cancoes AS C ON C.cancao_id = UC.cancao_id
-- 	ORDER BY U.nome ASC, C.titulo ASC;

-- SUBQUERIES
CREATE VIEW historico_reproducao_usuarios AS
	SELECT
		(SELECT nome FROM SpotifyClone.usuarios WHERE usuario_id = UC.usuario_id) AS usuario,
		(SELECT titulo FROM SpotifyClone.cancoes WHERE cancao_id = UC.cancao_id) AS nome
	FROM SpotifyClone.usuario_cancao AS UC
	ORDER BY usuario ASC, nome ASC;