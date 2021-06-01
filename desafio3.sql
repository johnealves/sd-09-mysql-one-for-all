CREATE VIEW historico_reproducao_usuarios AS
	SELECT 
		nome_usuario AS usuario,
		nome_musica AS nome
	FROM
		SpotifyClone.historico AS h

	INNER JOIN
	SpotifyClone.usuarios AS u ON h.id_usuario = u.id_usuario

	INNER JOIN
	SpotifyClone.musicas AS m ON h.id_musica = m.id_musica

	ORDER BY u.nome_usuario, m.nome_musica;
    
-- SELECT * FROM historico_reproducao_usuarios;
