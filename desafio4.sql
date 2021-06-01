CREATE VIEW top_3_artistas AS
	SELECT 
		nome_artista AS artista,
		COUNT(id_usuario) AS seguidores
	FROM
		SpotifyClone.seguindo AS s
		
	INNER JOIN
	SpotifyClone.artistas AS a ON s.id_artista = a.id_artista

	GROUP BY nome_artista

	ORDER BY seguidores DESC, nome_artista

	LIMIT 3;
    
-- SELECT * FROM top_3_artistas;
