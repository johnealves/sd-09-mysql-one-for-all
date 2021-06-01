CREATE VIEW SpotifyClone.top_3_artistas AS
    SELECT 
        artista.artista,
        COUNT(artista.artista) AS seguidores
    FROM
        SpotifyClone.seguindo_artista
            INNER JOIN SpotifyClone.artista ON artista.id = seguindo_artista.artista_id
    GROUP BY artista.artista
    ORDER BY seguidores DESC , artista
    LIMIT 3;
