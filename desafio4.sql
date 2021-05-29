CREATE VIEW top_3_artistas AS
    SELECT 
        ca.artista, COUNT(usa.artista_id) AS `seguidores`
    FROM
        artistas AS ca,
        usuarios_seguindo_artistas AS usa
    WHERE
        ca.artista_id = usa.artista_id
    GROUP BY ca.artista_id
    having `seguidores` > 1
    ORDER BY `seguidores` DESC, ca.artista ASC