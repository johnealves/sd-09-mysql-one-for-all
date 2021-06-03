CREATE VIEW perfil_artistas AS
    SELECT 
        art.nome AS artista,
        alb.nome AS album,
        COUNT(seg.id_usuario) AS seguidores
    FROM
        SpotifyClone.album AS alb
            INNER JOIN
        SpotifyClone.artista AS art ON alb.id_artista = art.id_artista
            INNER JOIN
        SpotifyClone.user_seguindo AS seg ON alb.id_artista = seg.id_artista
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista ASC , album ASC;
