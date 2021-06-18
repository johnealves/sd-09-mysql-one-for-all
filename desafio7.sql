CREATE VIEW perfil_artistas AS
    SELECT 
        musician_name AS artista,
        album_name AS album,
        COUNT(user_id) AS seguidores
    FROM
        SpotifyClone.album
            JOIN
        SpotifyClone.musician ON album.musician_id = musician.musician_id
            JOIN
        SpotifyClone.`following` ON `following`.musician_id = musician.musician_id
    GROUP BY album.album_id
    ORDER BY `seguidores` DESC , `artista` , `album`;
