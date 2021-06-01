CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        artista.artista,
        album.album,
        COUNT(seguindo_artista.artista_id) AS seguidores
    FROM
        SpotifyClone.album
            INNER JOIN SpotifyClone.artista ON artista.id = album.artista_id
            INNER JOIN SpotifyClone.seguindo_artista ON seguindo_artista.usuario_id = artista.id
    GROUP BY seguindo_artista.usuario_id , artista.artista , album.album
    ORDER BY seguidores DESC , artista.artista , album.album;
