CREATE VIEW top_3_artistas AS 
	SELECT
		art.artista AS artista,
        COUNT(*) AS seguidores
	FROM SpotifyClone.Seguindo AS seg
    INNER JOIN SpotifyClone.Artista AS art ON art.artista_id = seg.artista_id
    GROUP BY seg.artista_id
    ORDER BY seguidores DESC, art.artista ASC
    LIMIT 3;
    