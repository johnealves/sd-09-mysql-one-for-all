CREATE VIEW perfil_artistas AS
    SELECT 
        artist_name AS artista,
        album_title AS album,
        (SELECT 
                COUNT(artist_id)
            FROM
                SpotifyClone.following_artists
            WHERE
                following_artists.artist_id = a.artist_id) AS seguidores
    FROM
        SpotifyClone.artists a
            INNER JOIN
        SpotifyClone.albums al ON a.artist_id = al.artist_id
    GROUP BY album_title, album_id
    ORDER BY seguidores DESC, artista ASC, album ASC;
