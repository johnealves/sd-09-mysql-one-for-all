CREATE VIEW top_2_hits_do_momento AS
	SELECT 
		nome_musica AS cancao,
		COUNT(id_usuario) AS reproducoes
	FROM
		SpotifyClone.historico AS h
		
	INNER JOIN
	SpotifyClone.musicas AS m ON h.id_musica = m.id_musica

	GROUP BY nome_musica

	ORDER BY reproducoes DESC, nome_musica

	LIMIT 2;
    
-- SELECT * FROM top_2_hits_do_momento;
		