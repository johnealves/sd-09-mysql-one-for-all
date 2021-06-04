CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name AS 'artista',
        COUNT(f.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.following AS f
            INNER JOIN
        SpotifyClone.artists AS a ON f.artist_id = a.artist_id
    GROUP BY f.artist_id
    HAVING seguidores > 1
    ORDER BY seguidores DESC , artista ASC;
