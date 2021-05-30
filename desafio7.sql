CREATE VIEW perfil_artistas AS 
	SELECT
		art.artista AS artista,
        alb.album AS album,
        COUNT(seg.usuario_id) AS seguidores
	FROM SpotifyClone.Album AS alb
    INNER JOIN SpotifyClone.Artista AS art ON art.artista_id = alb.artista_id
    INNER JOIN SpotifyClone.Seguindo AS seg ON seg.artista_id = alb.artista_id
    GROUP BY alb.album_id
	ORDER BY seguidores DESC, art.artista ASC, alb.album ASC;