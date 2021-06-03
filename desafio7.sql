CREATE VIEW perfil_artistas AS
    SELECT 
        artists.name AS artista,
        albums.title AS album,
        COUNT(uf.artist_id) AS seguidores
    FROM
        albums
            INNER JOIN
        artists ON albums.artist_id = artists.artist_id
            INNER JOIN
        users_follows AS uf ON artists.artist_id = uf.artist_id
    GROUP BY album
    ORDER BY seguidores DESC , artista ASC , album ASC;
