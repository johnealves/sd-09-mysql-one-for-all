CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artista AS artista,
        album AS album,
        COUNT(usuario_id) AS seguidores
    FROM
        SpotifyClone.artistas AS ar
            INNER JOIN
        SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
            INNER JOIN
        SpotifyClone.seguindo_artista AS sa ON ar.artista_id = sa.artista_id
    GROUP BY album , artista
    ORDER BY seguidores DESC , artista ASC , album ASC;
 
		