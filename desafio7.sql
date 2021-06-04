CREATE VIEW perfil_artistas AS
    SELECT 
        a.artist_name AS 'artista',
        ab.album_name AS 'album',
        COUNT(f.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.artists AS a
            INNER JOIN
        SpotifyClone.albuns AS ab ON a.artist_id = ab.artist_id
            INNER JOIN
        SpotifyClone.following AS f ON a.artist_id = f.artist_id
    GROUP BY f.artist_id , ab.album_name
    ORDER BY seguidores DESC , artista ASC;
