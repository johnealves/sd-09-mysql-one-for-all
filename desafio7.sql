CREATE VIEW perfil_artistas AS
    SELECT
        artistas.artista AS artista,
        albuns.album AS album,
        COUNT(seguidos.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas AS artistas
            INNER JOIN
        SpotifyClone.albuns AS albuns ON albuns.artista_id = artistas.artista_id
            INNER JOIN
        SpotifyClone.artistas_seguidos AS seguidos ON seguidos.artista_id = artistas.artista_id
    GROUP BY seguidos.artista_id , albuns.album
    ORDER BY seguidores DESC , artista , album;
