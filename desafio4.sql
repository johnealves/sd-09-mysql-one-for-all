CREATE VIEW top_3_artistas AS
    SELECT 
        artists.name AS artista, COUNT(user_id) AS seguidores
    FROM
        users_follows AS uf
            INNER JOIN
        artists ON artists.artist_id = uf.artist_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
    