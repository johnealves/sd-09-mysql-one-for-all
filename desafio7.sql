CREATE VIEW perfil_artistas AS
    SELECT 
        ar.nome AS artista,
        al.album AS album,
        COUNT(sa.usuario_id) AS seguidores
    FROM
        SpotifyClone.artistas AS ar
            INNER JOIN
        SpotifyClone.seguindo_artistas AS sa ON ar.artista_id = sa.artista_id
            INNER JOIN
        SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista ASC , album ASC;
