CREATE VIEW top_3_artistas AS
    SELECT 
        A.nome AS 'artista', COUNT(SA.usuario_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas AS A
            INNER JOIN
        SpotifyClone.seguindo_artistas AS SA ON A.artista_id = SA.artista_id
    GROUP BY nome
    HAVING seguidores > 1
    ORDER BY seguidores DESC , nome ASC;
