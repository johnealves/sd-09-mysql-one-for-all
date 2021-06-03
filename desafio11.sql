CREATE VIEW cancoes_premium AS
	SELECT 
		nome_musica AS nome,
        COUNT(*) AS reproducoes
	FROM
		SpotifyClone.historico AS h

	INNER JOIN
	SpotifyClone.musicas AS m ON h.id_musica = m.id_musica
    
    INNER JOIN
	SpotifyClone.usuarios AS u ON h.id_usuario = u.id_usuario
    
    INNER JOIN
	SpotifyClone.planos AS p ON u.id_usuario = p.id_plano
    
    WHERE p.id_plano = 2 OR p.id_plano = 3
    
    GROUP BY nome

	ORDER BY nome;
    
-- SELECT * FROM cancoes_premium;
