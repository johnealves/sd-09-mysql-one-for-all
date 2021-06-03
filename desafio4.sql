CREATE VIEW top_3_artistas AS
    SELECT 
        A.artista_nome AS artista,
        COUNT(SA.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas AS A
            INNER JOIN
        SpotifyClone.seguindo_artista AS SA ON A.artista_id = SA.artista_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
