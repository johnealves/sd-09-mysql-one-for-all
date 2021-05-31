CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artista, al.album, COUNT(usa.artista_id) AS `seguidores`
    FROM
        artistas AS ar,
        albuns AS al,
        usuarios_seguindo_artistas AS usa
    WHERE
        ar.artista_id = al.artista_id
            AND ar.artista_id = usa.artista_id
    GROUP BY usa.artista_id, al.album
    ORDER BY `seguidores` DESC , ar.artista ASC , al.album ASC;