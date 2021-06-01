CREATE VIEW perfil_artistas AS
    SELECT 
        artistas.nome AS artista,
        albuns.nome AS album,
        COUNT(seguindo.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas AS artistas
            INNER JOIN
        SpotifyClone.albuns AS albuns ON artistas.artista_id = albuns.artista_id
            INNER JOIN
        SpotifyClone.seguindo_artistas AS seguindo ON seguindo.artista_id = artistas.artista_id
    GROUP BY seguindo.artista_id , albuns.nome
    ORDER BY seguidores DESC , artista ASC , album ASC;
    