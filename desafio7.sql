CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS 'artista',
        al.album_name AS 'album',
        t.seguidores AS 'seguidores'
    FROM
        SpotifyClone.albums AS al
            INNER JOIN
        SpotifyClone.artists AS ar ON al.artist_id = ar.artist_id
            INNER JOIN
        (SELECT 
            a.artist_id AS 'artista', COUNT(f.artist_id) AS 'seguidores'
        FROM
            SpotifyClone.user_following AS f
        INNER JOIN SpotifyClone.artists AS a ON f.artist_id = a.artist_id
        GROUP BY f.artist_id) AS t ON ar.artist_id = t.artista
    ORDER BY `seguidores` DESC , `artista` ASC , `album` ASC;
