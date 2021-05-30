CREATE VIEW perfil_artistas AS
    SELECT 
        ar.nome_artista AS artista,
        al.nome_album AS album,
        COUNT(sa.usuario_id) AS seguidores
    FROM
        SpotifyClone.albuns AS al
            INNER JOIN
        SpotifyClone.artistas AS ar ON ar.artista_id = al.artista_id
            INNER JOIN
        SpotifyClone.seguidores_artista AS sa ON sa.artista_id = ar.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista ASC , album;
