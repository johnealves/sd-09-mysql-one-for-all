CREATE VIEW perfil_artistas AS
    SELECT 
        AR.artista_nome AS artista,
        AL.album_nome AS album,
        COUNT(SA.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas AS AR
            INNER JOIN
        SpotifyClone.albuns AS AL ON AR.artista_id = AL.artista_id
            INNER JOIN
        SpotifyClone.seguindo_artista AS SA ON AR.artista_id = SA.artista_id
    GROUP BY SA.artista_id , AL.album_nome
    ORDER BY seguidores DESC , artista ASC , album ASC;
