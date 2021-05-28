CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        ar.artista_nome AS artista,
        al.album_nome AS album,
        COUNT(s.artista_id) AS seguidores
    FROM
        SpotifyClone.Albums AS al
            INNER JOIN
        SpotifyClone.Artistas AS ar ON al.artista_id = ar.artista_id
            INNER JOIN
        SpotifyClone.Seguidores AS s ON ar.artista_id = s.artista_id
    GROUP BY ar.artista_id , al.album_nome
    ORDER BY seguidores DESC , artista, album;
