CREATE VIEW perfil_artistas AS
    SELECT 
        a.nome AS artista,
        al.album AS album,
        COUNT(sa.usuario_id) AS seguidores
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.seguindo_artistas AS s ON a.artista_id = s.artista_id
            INNER JOIN
        SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista ASC , album ASC;
    