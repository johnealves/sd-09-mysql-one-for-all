CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS artista,
        al.album_name AS album,
        COUNT(f.artist_id) AS seguidores
    FROM
        SpotifyClone.artist AS ar
            INNER JOIN
        SpotifyClone.album AS al ON al.artist_id = ar.artist_id
            INNER JOIN
        SpotifyClone.`following` AS f ON f.artist_id = ar.artist_id
    GROUP BY `album` , `artista`
    ORDER BY `seguidores` DESC , `artista` , `album`;
