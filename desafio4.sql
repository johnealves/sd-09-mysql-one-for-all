CREATE VIEW top_3_artistas AS
    SELECT 
        ARTISTA.artista_name AS 'artista',
        COUNT(FOLLOW.artista_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas_seguindo AS FOLLOW
            JOIN
        SpotifyClone.artista AS ARTISTA ON FOLLOW.artista_id = ARTISTA.artista_id
    GROUP BY 1
    ORDER BY 2 DESC , 1
    LIMIT 3;