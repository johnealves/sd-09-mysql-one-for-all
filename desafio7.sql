CREATE VIEW `perfil_artistas` AS
    SELECT 
        art.artist_name AS `artista`,
        alb.album_name AS `album`,
        COUNT(f.artist_id) AS `seguidores`
    FROM
        SpotifyClone.`album` AS alb
            INNER JOIN
        SpotifyClone.`artist` AS art ON alb.artist_id = art.artist_id
            INNER JOIN
        SpotifyClone.`following` AS f ON f.artist_id = alb.artist_id
    GROUP BY `album` , `artista`
    ORDER BY `seguidores` DESC , `artista` , `album`;
    
    
    