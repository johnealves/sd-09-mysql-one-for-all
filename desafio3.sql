CREATE VIEW historico_reproducao_usuarios AS
	SELECT
		U.nome AS 'usuario', C.cancao AS 'nome'
	FROM
		SpotifyClone.historico AS H
			INNER JOIN
		SpotifyClone.usuarios AS U ON H.usuario_id = U.usuario_id
			INNER JOIN
		SpotifyClone.cancoes AS C ON H.cancao_id = C.cancao_id
	ORDER BY usuario ASC, nome ASC;
