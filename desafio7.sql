CREATE VIEW perfil_artistas AS
    SELECT 
        A.nome AS artista,
        ALB.album AS album,
        COUNT(SA.usuario_id) AS seguidores
    FROM
        SpotifyClone.artistas AS A
            INNER JOIN
        SpotifyClone.seguindo_artistas AS SA ON A.artista_id = SA.artista_id
            INNER JOIN
        SpotifyClone.albuns AS ALB ON A.artista_id = ALB.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista ASC , album ASC;
